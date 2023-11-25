import tensorflow as tf
from tensorflow import keras

#!wget https://github.com/alexeygrigorev/large-datasets/releases/download/wasps-bees/bees-wasps.h5

model = keras.models.load_model('bees-wasps.h5')

converter = tf.lite.TFLiteConverter.from_keras_model(model)

tflite_model = converter.convert()

with open('bees-wasps.tflite', 'wb') as f_out:
    f_out.write(tflite_model)