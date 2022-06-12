# Machine-Learning-Conclusion

This repository contains the dataset, and machine learning model that we used in develop "Tanya" app.

folder "Machine Learning x", it means x is an updated model, so the higher the x value means more updated the model.

- Our Clean Datasets is available in [here](https://drive.google.com/drive/folders/1E4H6tzgbpKknkgZYZ9btxPq6oyMTuYzC?usp=sharing)
- Our final machine learning model available in here
- Our final converted ML model in .tflite available in here
- Our test predict app available in here


#Step by step to Create Machine Learning model with own custom datasets
1. Get and preparation resource
  a. Install Tensorflow 2.x and other library and also install text editor
  b. Collecting Datasets by direct photo and web scraping
  c. Do Pre-Processing Data by grouping image per class or labelling image per class
  d. Split data 80% for training and 20% for validation

2. Create Machine Learning model
  a. import library like tensorflow, matplotlib, panda and other
  b. Load own custom datasets to model
  c. Do image Augmentation to own Datasets
  d. Use Transfer Learning by call pre-trained model such as VGG16, MobileNetV2, or ResNet50.
  e. Add own custom layer, do Fine tuning and hyper parameter tuning to pre-trained model
  f. Training model
  g. Evaluating model
  h. Save model to saved_model format
  i. Convert saved_model to .tflite
  
3. How to use machine learning model to android
   a. Setup dependencies and camera permission
   b. Add trained .tflite file
   c. Generate Model ByteBuffer.
   d.  Generate captured image ByteBuffer.
   e.  Run the app and see predict result

  

