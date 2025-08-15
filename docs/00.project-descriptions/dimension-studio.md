### 🔵 **1. Real-Time ML Pipeline for Live Activation – Paris Olympics (Omega Pavilion, Parc de Bercy)**

**Summary:** Led end-to-end development of a real-time matting and segmentation ML pipeline for an interactive installation where visitors raced against a virtual Olympic athlete on an LED wall.
**Interview Notes:**

* Fully owned ML pipeline: model research → prototyping → deployment.
* Used vision models for matting/segmentation, optimised for speed + quality.
* Built a dual-node render system for autonomous operation (no supervision).
* Integrated with custom hardware/software for LED wall rendering.
* Solved camera system alignment, motion artefact issues, and accessibility (e.g. robust matting for wheelchair users).
* High-visibility, live public event with tight deadlines and no margin for error.

---

### 🔵 **2. ML-Based Segmentation and Matting Pipeline for Virtual Production**

**Summary:** Built a general-purpose video segmentation pipeline that outputs Cryptomatte EXR layers with semantic object labels, useful for first-pass rotoscoping in VFX.
**Interview Notes:**

* Vision-language model used for semantic object detection and labelling.
* Cryptomatte EXR writer created per-frame deep ID layers + hashed object metadata.
* Ranking algorithm for object importance (based on mask size & pairwise IoU).
* Applications: virtual production, post-production compositing, automatic rotoscoping.

---

### 🟢 **3. DepthCraftor Integration – Monocular Depth Estimation Pipeline**

**Summary:** Integrated and optimised the DepthCraftor model for monocular depth estimation in a video pipeline aimed at 3D-aware compositing and virtual production.
**Interview Notes:**

* Implemented dynamic frame loading to replace memory-heavy original implementation.
* Addressed efficiency bottlenecks for long video inference.
* Investigated application to 3D/360° video; collaborated with UE graphics pipeline team.

---

### ⚙️ **6. Cryptomatte EXR Writing Pipeline (Tooling Project)**

**Summary:** Developed a writer for Cryptomatte EXR files that creates per-frame semantic layers, object ID hashes, and manifests from segmentation outputs.
**Interview Notes:**

* Handles dynamic object counts, metadata manifest generation, and per-pixel layer writing.
* Implemented Cryptomatte-compliant hash function for object ID layers.
* Designed to plug into existing VFX toolchains.

---