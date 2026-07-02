# Real-Time Emoji Expression & Pose Detection System

A real-time computer vision project that uses a webcam to detect **facial expressions and body pose**, then maps them to dynamic emoji outputs on screen.

Built using **MediaPipe** for landmark detection and **OpenCV** for real-time video processing.

---

## Features

- Real-time webcam-based processing
- Smile detection using facial landmarks (mouth aspect ratio)
- Hand-raise detection using pose estimation (wrists vs shoulders)
- Neutral expression fallback state
- Combined face + pose classification pipeline
- Live emoji overlay based on user state

---

## How It Works

The system uses two MediaPipe models:

### 1. Pose Estimation
- Detects key body landmarks:
  - Left/right shoulders
  - Left/right wrists
- Classifies **HANDS_UP** when either wrist is above shoulder level

### 2. Face Mesh
- Tracks 468 facial landmarks
- Computes **mouth aspect ratio (MAR)**:
  - Distance between lips vs mouth width
- Classifies:
  - Smile → MAR above threshold
  - Neutral → below threshold

---

## State Priority Logic

If multiple gestures are detected, the system uses this priority:


HANDS_UP > SMILING > STRAIGHT_FACE

This ensures consistent and predictable emoji output.

---

## Tech Stack

- Python 3.10–3.12 (recommended)
- OpenCV
- MediaPipe
- NumPy
- Pillow

---

## Installation

### 1. Clone the repository
```bash
git clone https://github.com/YOUR_USERNAME/emoji-reactor.git
cd emoji-reactor
````

---

### 2. Create virtual environment

```bash
python -m venv emoji_env
```

---

### 3. Activate environment (Windows PowerShell)

```powershell
.\emoji_env\Scripts\Activate.ps1
```

---

### 4. Install dependencies

```bash
pip install -r requirements.txt
```

---

## Run the Project

```bash
python emoji_reactor.py
```

---

## 🎮 Controls

* Press **Q** → Quit application
* Raise hands → 🙌 Hands-up emoji
* Smile → 😄 Smiling emoji
* Neutral face → 😐 Default emoji

---

## Notes

* Requires a working webcam
* Lighting conditions affect detection accuracy
* Do NOT commit `emoji_env/` or any virtual environment folders
* Run inside a properly activated Python virtual environment

---

## Future Improvements

* Add emotion classification (happy, sad, angry, surprised)
* Improve gesture robustness under different lighting conditions
* Add more gesture-based controls (volume, UI navigation)
* Replace static emojis with animated overlays
* Deploy as a web application (Flask / FastAPI + WebRTC)
