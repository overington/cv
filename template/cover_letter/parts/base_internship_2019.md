### 2019 SEPNet Internship: Machine Learning and Computer Vision.
<!--
- Built object detection model for earth observation data, to detect and differentiate between biodiversity types (Python, TensorFlow and Keras).
- Researched and implemented methods of transfer learning in NNs for a project constrained by limited labelled dataset; improving training time.
- Created internal reference documentation for CVAT (Computer Vision Annotation Tool).
- Collaborated on a poster researching computer vision methods using machine learning, neural networks and transfer learning.
 -->

I took part in the South-Eastern Physics Network (SEPNet) internship programme, joining the Earth Observation team at Deimos Space UK.  I lead an investigative project to produce NN object detection models that could differentiate between various types of vegetation and biodiversity; hi-lighting regions of high detection density of a particular biodiversity class within an image. The model would be used in a project for their farming industry partners with the aim to reduce chemical usage extracting optimal areas to target the resources. On completion of the project, I produced a report and research poster and presented my findings and results at the SEPNet presentation day.

I used python and libraries Keras, TensorFlow, PIL, pandas, and numpy to batch process the labelled images, and then trained the model on them using a dedicated high power GPU server. The trained model could then be used to classify a stream of images on the fly, or be saved for later use further down in the partner pipeline.

I research and implemented the process of transfer learning in neural networks as within the project remit, it was specified that there would be a limited availability of labelled source imagery. This increased the feature extraction accuracy and decreased the training time (when comparing to the same dataset without using transfer learning).
