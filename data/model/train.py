import pickle
import numpy as np
import cv2
from FLAGS import *                                   # Stores parameters and hy
from keras.optimizers import Adam
from DatNet import DatNet, mse_steer_angle     # Compute the loss of steering angle
from keras.models import model_from_json
from keras.callbacks import ModelCheckpoint, EarlyStopping
import matplotlib.pyplot as plt
import os
plt.interactive(False)

# Import data
# ########## FILE READER ##############
# #####################################
# /home/jjs/git/jetson-car/bag/straight.p
data = pickle.load(open('/home/jjs/git/JScar/bag/test_pickle.p', 'rb'))
# data2 = pickle.load(open('../recovery.p', 'rb'))

images = data['features']
measurements = data['labels']
# images_2 = data2['features']
# measurements_2 = data2['labels']

# images = np.concatenate((images, images_2))
# measurements = np.concatenate((measurements, measurements_2))

# Crop the top of the images - the sky
# images = images[:, 29:75, ...]
images = images[:, 74:120, ...]
plt.imshow(images[10])
plt.show()
# Get only a portion of the dataset
images = images[:int(len(images)/1)]
measurements = measurements[:int(len(measurements)/1)]
# measurements = measurements[:, :2]  # Remove speed output
print("Data loaded : Input {} // Measurement {}".format(np.shape(images), np.shape(measurements)))

# #############################
# ## DATA AUGMENTATION ########
###############################
# from image_processor import random_transform
# augmented_images = []
# augmented_measurements = []
# for image, measurement in zip(images, measurements):
#     flipped_image = cv2.flip(image, 1)
#     augmented_images.append(flipped_image)
#     flipped_angle = measurement[0] * -1.0
#     augmented_measurements.append((flipped_angle, measurement[1]))
#     # #
#     rand_image, _ = random_transform(image)
#     augmented_images.append(rand_image)
#     augmented_measurements.append(measurement)

# # # TODO:
# # How to divide this into frame block for RNN
# print(np.shape(images))
# print(np.shape(augmented_images))
images = np.concatenate((images, images))
measurements = np.concatenate((measurements, measurements))

# Build new model
model = DatNet(input_shape=(HEIGHT, WIDTH, CHANNELS), res_layer_params=(3, 32, 4))

if os.path.isfile('./cnn.h5') is True:
    model.vision_model.load_weights('./cnn.h5', by_name=True)
    print("Pre-trained model loaded...")
else:
    pass

model.vision_model.summary()
model.vision_model.compile(optimizer=Adam(lr=0.00002), loss='mean_squared_error')

checkpoint = ModelCheckpoint('./checkpoints/weights.{epoch:02d}-{val_loss:.3f}.h5', save_weights_only=True)
model.vision_model.fit(images, measurements, batch_size=128, epochs=20, callbacks=[checkpoint], validation_split=0.3, shuffle=True)

# Save model
json_string = model.vision_model.to_json()
with open('./cnn.json', 'w') as outfile:
    outfile.write(json_string)
model.vision_model.save_weights('./cnn.h5')
print('Model saved')
# # Post-process angle
