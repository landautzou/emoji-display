# 😊 Real-Time Emoji Expression & Pose Detection System

A real-time computer vision system that uses a webcam to detect **facial expressions and body pose**, dynamically displaying emojis based on the user's current state.

Built using **MediaPipe** for face and pose tracking and **OpenCV** for real-time video processing.

---

# Features

- 🎥 Real-time webcam-based detection
- 😄 Smile detection using facial landmarks
- 🙌 Hand-raise detection using pose estimation
- 😐 Neutral face classification
- ⚡ Low-latency real-time inference
- 🖥️ Live visual overlay with emoji feedback

# How It Works

The system combines two MediaPipe models:

## 1. Pose Estimation
- Tracks key body landmarks (shoulders, wrists)
- Detects "Hands Up" when wrists are above shoulders

## 2. Face Mesh
- Detects 468 facial landmarks
- Computes mouth aspect ratio (MAR)
- Classifies:
  - Smile → mouth opening threshold exceeded
  - Neutral → below threshold

# State Priority Logic
HANDS_UP > SMILING > STRAIGHT_FACE

The highest-priority detected gesture determines the emoji output.

---

# Tech Stack

- Python 3.10–3.12 (recommended)
- OpenCV
- MediaPipe
- NumPy
- Pillow

# Installation

## 1. Clone repository
```bash
git clone https://github.com/YOUR_USERNAME/emoji-reactor.git
cd emoji-reactor
