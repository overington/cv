### 2020 Gesture Recognition for embedded at arm
<!--
 Throughout my time at Arm I have taken part in the graduate rotation programme, exposing me to different projects and teams within the machine learning group:

 - __Applied ML team, *Dynamic hand gesture recognition, and visual wake words*__ (Current): An ML pipeline for static and dynamic gesture recognition, aimed at embedded / low power processors
   - Lead researcher exploring SOA techniques for dynamic gesture inputs
   - Research and read papers on novel CV ML model architectures and datasets
   - Create data generator pipeline using OpenCV for large video dataset
   - Implement novel architecture aimed at low power processors
   - Report metrics for comparing model accuracy, peak memory usage, FLOPS on base model to compare on a variety of arm hardware IP, and showed changes after model quantisation and other optimisations

 - __ML Tooling Team, *IPSS-ML (IP Selection Sandbox for ML applications)*__ (5 months): a middle-ware application to simulate and test ML applications on accelerated (NPU) and regular (M/A class processors) Arm IP using fast- and cycle-models.
   - Increase test coverage to all lines of code, adding niche test cases
   - Bring codebase to be completely error and warning free by implement Pylint into CI environment
   - Bug fix front end web app
   - Deliver presentation on methods used to implement Pylint into a live codebase, and Jenkins CI build process with Gerrit
 -->


 I joined Arm in November 2020, where my role has been researching and implementing the use case of dynamic gesture recognition for embedded processors (home or in-car entertainment systems). The outline for my project was that it should have the ability to understand and react to a set of 10-20 simple gestures, with inputs from video sensors (rgb / depth).  I have been researching, implementing and refining ML models and pipelines for this use case, using technologies such as python, Tensorflow, Keras and OpenCV, and training infrastructure on EC2 instances on AWS.

 The project has involved researching state of the art methods and models for video understanding, and more specifically gesture recognition.  I have then implemented, customised, trained and optimized one model from a research paper chosen for its small memory and operational footprint.

 I created a custom video data generator using OpenCV as a backbone, to simulate incoming video streams from a prerecorded dataset, with specifications for downsampling to target configurations eg fps, on the fly data augmentation for training data with operations being implemented using TensorFlow operations.

 The model customisation process involved replacing layers that are unsupported due to hardware and software constraints, with custom layers written using tf operations that approximate the original operations but with full support.

 The model optimisations include model quantisation, using the TensorFlow model optimisation toolkit, as well as some in-house methods, and then running analytics for target hardware IP, comparing metrics such as SOL, memory footprint, and NPU support - per IP.
