# Experience

## Dimension Studio, London UK, Nov 2023 -- Present.\
*Software Engineer - Machine Learning and Research*, (Applied Technology Team)

<!-- In my role, I am responsible for researching and implementing both novel and existing machine learning techniques for virtual production and live events. This involves developing and maintaining software specifically designed for moving-image based purposes. I collaborate closely with cross-functional teams to ensure the successful delivery of projects.


__Live Production - Omega, *Race of Champions*__ (Omega Pavilion, Parc de Bercy, Paris Olympics, 2024):
Brand campaign featuring live audience interaction with ML segmentation and matting from multi-angle video capture, racing stats overlay, and composite next to a 3D virtual athlete (meta human), rendered in near real-time.
- I Developed a pipeline with two simultaneous Linux worker nodes:
  - ML segmentation/matting of Human participant from multi-camera feeds
  - Video composite of rotoscoped participant onto self selected pre-render 3d virtual athlete (meta human), with race stats overlay
  - Near real-time processing: tasks were added to a queue and delivered within 5-10 minutes of audience participation
  - Software stack: Python, OpenCV, PyTorch, Linux, systemd
- Featured on Omega's social media and website
- Audience count: 500+ per day, for duration of Olympics and Paralympics 2024
- Athletes: Noah Lyles, Shericka Jackson, Hannah Conckcroft, Marcel Hug

The TSOMEGA project presents a groundbreaking live audience activation for the Paris Olympic Games 2024, utilising advanced machine learning (ML) and computer vision techniques to create an immersive experience. Participants have the unique opportunity to race alongside an Olympic athlete in real-time, with the event captured and transformed into a personalised video. This innovative approach employs ML-based segmentation and alpha-matting methods to seamlessly integrate live footage of participants with pre-rendered backgrounds featuring Olympic champions.

The technical pipeline consists of three main stages: pre-processing, ML inference, and post-processing. Initially, the pre-processing stage aligns frames from both background and foreground captures, utilising a keyframe finding algorithm that leverages trigger timecodes to synchronise the footage. This alignment is crucial for ensuring the seamless integration of the participant into the virtual race environment. Subsequently, the aligned footage is converted into a tensor format, optimising it for the ML inference process.

During the inference stage, a sophisticated deep learning model based on an encoder-decoder architecture is employed to differentiate between background and foreground pixels within each frame of video footage. This model encodes the visual data into a latent space, from which an alpha-matte layer is decoded, effectively isolating the foreground subject.

Finally, the post-processing stage applies the alpha-matte layer to the background footage on a frame-by-frame basis, resulting in an RGBA matted frame that includes the live participant. This frame is then composited onto the pre-rendered background, culminating in a shareable video experience that not only captures the excitement of the Olympic Games but also showcases the participant's virtual race with an Olympic champion. This cutting-edge activation exemplifies the convergence of sports and technology, offering a unique and engaging way for audiences to interact with the event.


__Semantic Segmentation and Matting pipeline for Virtual Production__:

Our project is focused on developing a pre-processing pipeline for raw footage that automatically generates alpha mattes for various objects such as humans, props, vehicles, and animals using machine learning. The output of the pipeline will be indexed Cryptomatte files for use in tools like Nuke and Resolve. We are advancing automated segmentation techniques for virtual production workflows by first using a vision-language model to generate frame descriptions and create an object list through NLP, enabling text-to-object location prompting. Second, we are integrating zero-shot text-to-mask capabilities using models like CLIP, BLIP2, and GroundingDINO for object localisation, combined with Segment Anything 2 for dynamic object segmentation. Lastly, we are refining these segmentation outputs into high-quality alpha masks using generative AI and guided filters, ensuring precise and graded mattes critical for post-production.

 -->

Applying state-of-the-art machine learning and computer vision research to push the boundaries of virtual production. Key projects include:

__Live human matting project for Omega at Paris Olympic Games 2024__: Developed and deployed an advanced ML-based pipeline for live audience activation. The project enables participants to virtually race alongside Olympic athletes in real-time, using machine learning for live footage segmentation and alpha-matting. The pipeline integrates:

- Pre-processing stage for frame alignment using keyframe finding algorithms and timecodes.
- Deep learning-based encoder-decoder architecture for generating alpha-matte layers.
- Post-processing for seamless integration of live participants into pre-rendered virtual backgrounds, resulting in immersive and shareable experiences.

__Semantic Segmentation and Matting Pipeline for Virtual Production__: Leading the development of an automated segmentation workflow that generates high-quality alpha mattes from raw footage for virtual production. Key achievements:

- Leveraged vision-language models such as BLIP2 and GroundingDINO for object detection and text-to-object prompting.
- Integrated zero-shot text-to-mask segmentation methods and refined outputs using generative AI models to create precise, production-ready alpha mattes.
- Optimised the output for compositing tools like Nuke and Resolve by creating Cryptomatte files, streamlining the post-production process.

\newpage

## **Expedia**, London UK, Feb 2022 -- Nov 2023.\
*Machine Learning Engineer* (Growth Marketing & Technology - meta-bidding team) Cross-functional team maintaining & growing big data platform running ML prediction pipelines for meta bidding & business intelligence on AWS infrastructure. I was MLE on several key projects, including:

- Architecting and implementing centralised QA asset, unifying several handcrafted functions performing same algorithm on different platforms.  This was also used as PoC for building out a unified meta-function store, and as the first step in breaking apart our monolithic platform application into modular form
- Migrating legacy code w/ linear process into AirFlow DAGs, enabling step tables, concurrent processing, and code quality improvements

## **Arm**, Cambridge UK, November 2020 -- Jan 2022.\
*Software Engineer, Machine Learning Group* (Graduate programme)

I took part in the arm graduate rotation programme, which exposed me to a variety of different projects and teams within the machine learning group. I chose specific teams and projects to work on to develop my skills in machine learning, computer vision and embedded systems.

- __ML Research team, *Bayesian DeepLearning for CV*__: (2 months) Lead researcher, exploring and implementing Bayesian DeepLearning models for pixel level image segmentation, and optimising for Arm hardware IP.

  - Explore model architectural changes for performance optimisations of DeepLabV3
  - Deep dive into Bayesian DeepLearning methods with a model implementation for pixel segmentation.

- __Applied ML team, *Dynamic hand gesture recognition, and visual wake words*__ (8 months): 
Lead research engineer conducting a literature review of models and datasets, training and optimizing a video understanding model for gesture recognition, and implementing a data generator pipeline using OpenCV for large video datasets. Applying state-of-the-art techniques to enhance performance on low-power, IoT, and embedded Arm IP.

<!-- - Lead researcher exploring SOA techniques for dynamic gesture recognition for low power processors -->
<!-- - Implement novel architecture aimed at low power processors -->
<!-- - Research novel CV ML model architectures and datasets -->
<!-- - Create data generator pipeline using OpenCV for large video dataset -->
<!-- - Report metrics for comparing model accuracy, peak memory usage, FLOPS on base model to compare on a variety of arm hardware IP, and showed changes after model quantisation and other optimisations -->


- __ML Tooling Team, *IPSS-ML (IP Selection Sandbox for ML applications)*__ (4 months): Part of the team developing a middle-ware application to simulate and test ML applications on accelerated (NPU) and regular (M/A class processors) Arm IP using fast- and cycle-models.
  <!-- - Increase test coverage to all lines of code, adding niche test cases
  - Bring codebase to be completely error and warning free by implement Pylint into CI environment
  - Bug fix front end web app
  - Deliver presentation on methods used to implement Pylint into a live codebase, and Jenkins CI build process with Gerrit -->

**Deimos Space UK**, Harwell, Oxfordshire, July -- Sept 2019.  *Computer Vision and Machine Learning research intern* - Built object detection model using neural networks for earth observation data, to detect and differentiate between biodiversity types (Python, TensorFlow and Keras)
<!-- - Researched methods of transfer learning in neural networks, and implemented one in a project constrained by a limited labelled dataset; improving training time -->
<!-- - Created internal reference documentation for CVAT (Computer Vision Annotation Tool) -->
<!-- - Collaborated on a poster researching computer vision methods using machine learning, neural networks and transfer learning -->

**Yobota**, London, Jun -- Sep 2018. *Software Engineer intern* - Developed PoC integration API for OpenBanking using Django / DRF / Oauth 2.0

\begin{multicols}{2}
\section{Selected freelance}
June 2016 -- 2020: \textbf{Stillnessinyoga}, Remote, The Netherlands - \emph{Web developer / Digital content development}

2013 -- 2015: \textbf{LVSC}, London - \emph{Web developer} Several projects including VCS Assist, London For All. Designed and coded the community website for publishing a blog and news articles. Later created a business directory, for users to publicise their projects

\end{multicols}
<!-- - June 2016 -- 2020: **Stillnessinyoga**, Remote, The Netherlands\ -->
<!-- *Web developer / Digital content development* -->

  <!-- -   Lead developer for multi-lingual e-commerce WordPress platform -->
  <!-- -   Built and maintained website using the Genesis theme framework featuring an events calendar, e-commerce platform, content restricted membership subscriptions, and membership e-learning course and system -->
  <!-- -   developed a custom secure Amazon S3 media serving platform -->
  <!-- -   Worked along side head teachers to design and put together three teacher training manuals (Level 1, 2, & Advanced 2) -- in iBook format -- an interactive e-publishing book format -->
<!-- -   2016: **Ecostage Pledge**. *Web developer.* Designed and coded the website for a community of artists and designers. Features include a membership which integrating BBPress user interaction features -->
<!-- -   2015: **Giddy Diva**. *WordPress theme developer*. Migrated a static site to WordPress, Built out theme, integrated client testimonials. -->
<!-- -   2013 -- 2015: **LVSC**. *Web developer.* Several projects including VCS Assist, London For All. Designed and coded the community website for publishing a blog and news articles. Later created a business directory, for users to publicise their projects -->
<!-- -   2012: **London for All**. *Web developer.* Designed and coded the community news site -->
<!-- -   2012: **MIAGOA**. *WordPress theme developer.* Developed site from a photoshop image design template. -->
