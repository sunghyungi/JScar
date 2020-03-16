# This script is used to generate pickle file from Udacity car simulator.
# It will allow me to reuse dataset easier.

# Change LOG_PATH and IMG_PATH to generate new file
import pickle
from FLAGS import *
from DataSet import DataSet
# import matplotlib.pyplot as plt
import numpy as np

LOG_PATH = '/home/jjs/git/JScar/bag/driving_log.csv'
IMG_PATH = '/home/jjs/git/JScar/bag/imgs/'
FILE_NAME = '/home/jjs/git/JScar/bag/test_pickle.p'

data = DataSet(LOG_PATH, IMG_PATH, sequence=TIME_STEPS)

features, labels = data.build_train_data()
pickle.dump({'features': features, 'labels': labels}, open(FILE_NAME, 'wb'))

