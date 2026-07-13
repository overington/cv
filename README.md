# Samuel Overington - Curriculum Vitae

Developing and optimising production-ready machine learning and computer vision pipelines based on state-of-the-art research to power live experiences and virtual production.

**Live human matting project for Omega at Paris Olympic Games 2024** *\[Pytorch, OpenCV, Matting\]*

Developed and deployed a distributed ML-based video processing pipeline for a live activation (300+ completed renders/day), enabling multi-camera alignment, ML based background matting, and automated editing. Key achievements:

- Engineered a multi-camera temporal synchronisation pipeline utilising global timecodes and Genlock hardware to align four independent video feeds with an LED volume display shutter.
- Architected a distributed, multi-node GPU processing queue across shared network storage, managing state transitions (ready, processing, complete) to scale processing throughput across multiple machines.
- Optimised VRAM utilisation and system throughput by implementing a zero-copy GPU memory strategy, keeping video tensors resident in GPU memory throughout decoding, inference, and encoding stages to meet a strict 5-minute end-to-end processing SLA.
- Developed a deterministic computer vision algorithm to anchor video timelines by localising and detecting a single-frame optical flash event, cross-referencing it with JSON-based finish-line metadata.

**Real-time depth & human segmentation in UE** *\[PyTorch, OpenCV, ONNX, TensorRT, Unreal Engine, C++, Segmentation, Depth Estimation, Object Tracking\]*

Engineered a high-performance Unreal Engine C++ Plugin integrating live video streams with synchronised machine learning models for real-time depth estimation and human segmentation using TensorRT runtime. Key achievements:

- Ported and compiled PyTorch models to ONNX, utilising TensorRT for hardware-accelerated INT8/FP16 inference optimisation within the live execution pipeline.
- Re-architected a model graph to overcome TensorRT compilation constraints on dynamic hidden states, decoupling the encoder-decoder layers and extracting the feature cache aggregation logic from the PyTorch `nn.Module` to be managed natively in C++.
- Designed a zero-copy GPU memory pipeline, ensuring tensors remained entirely in VRAM between depth inference, segmentation steps, and Unreal Engine texture registration to eliminate CPU-GPU serialisation bottlenecks.
- Optimised high-throughput tensor pre- and post-processing routines to run concurrently, aligning inference latency with the engine’s main render thread to maintain a stable, real-time frame rate.

**Semantic segmentation and matting pipeline for virtual production** *\[PyTorch, OpenCV, ML Video Matting\]*

Leading the development of an automated segmentation pipeline to generate high-quality alpha mattes from raw footage for virtual production. Key achievements:

- Leveraged vision-language models such as BLIP2, GroundingDINO and SAM2 for text-to-object prompting, object detection and segmentation.
- Integrated zero-shot text-to-mask segmentation methods and refined outputs using generative AI models to create precise, production-ready alpha mattes.
- Optimised the output for compositing tools like Nuke and Resolve by creating Cryptomatte files, streamlining the post-production process.

Architected and scaled data infrastructure for training, deploying, and running high-throughput machine learning prediction pipelines on AWS for meta-bidding and business intelligence. <!--
I was MLE on several key projects, including:

- Architecting and implementing centralised QA asset, unifying several handcrafted functions performing same algorithm on different platforms.  This was also used as PoC for building out a unified meta-function store, and as the first step in breaking apart our monolithic platform application into modular form
- Migrating legacy code w/ linear process into AirFlow DAGs, enabling step tables, concurrent processing, and code quality improvements
-->

<!-- ## **Arm**, Cambridge UK, November 2020 -- Jan 2022.\
*Graduate Engineer* (Nov 2020 - Apr 2021)  
*Software Engineer, Machine Learning Group* (Apr 2021 - Jan 2022) -->

Participated in Arm’s graduate rotation programme, gaining hands-on experience across multiple teams and projects within the machine learning group. Proactively selected rotations to build expertise in machine learning, computer vision, and embedded systems.

- **ML Research team, *Bayesian DeepLearning for CV*** (2 months): Led research and implementation of Bayesian models for pixel-level image segmentation, including DeepLabV3 optimisations for Arm hardware.
- **Applied ML team, *Dynamic hand gesture recognition, and visual wake words*** (8 months): Lead research engineer conducting a literature review of models and datasets, training and optimising a video understanding model for gesture recognition, and implementing a data generator pipeline using OpenCV for large video datasets. Applying state-of-the-art techniques to enhance performance on low-power, IoT, and embedded Arm IP.
- **ML Tooling Team, *IPSS-ML (IP Selection Sandbox for ML applications)*** (4 months): Part of the team developing a middle-ware application to simulate and test ML applications on accelerated (NPU) and regular (M/A class processors) Arm IP using fast- and cycle-models.

<!-- - Developed PoC integration API for OpenBanking using Django / DRF / Oauth 2.0 -->

<!-- - Built object detection model using neural networks for earth observation data, to detect and differentiate between biodiversity types (Python, TensorFlow and Keras) -->

**Internships**:

- *Deimos Space UK*, Oxfordshire, July – Sept 2019. *Computer Vision and Machine Learning research intern*
- *Yobota*, London, Jun – Sep 2018. *Software Engineer intern*

**Selected freelance**:

- *Stillnessinyoga*, Remote, The Netherlands Web developer / Digital content development (June 2016 – 2020).
- *LVSC*, Web Developer (2013 – 2015) <!-- 2013 -- 2015: \textbf{LVSC}, London - \emph{Web developer} Several projects including VCS Assist, London For All. Designed and coded the community website for publishing a blog and news articles. Later created a business directory, for users to publicise their projects -->
