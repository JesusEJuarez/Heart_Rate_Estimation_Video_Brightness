# Heart Rate Estimation from Video Brightness

## Introduction

This project aims to estimate a person's heart rate by analyzing the brightness levels of frames in a video. It relies on the principle that changes in blood flow due to the heartbeat can affect the amount of light passing through a finger (thumb), which is captured by a smartphone camera. The video is decomposed into frames, and the brightness of each frame is analyzed over time to approximate the person's heart rate.

## Methodology

The methodology used for heart rate estimation involves the following steps:

1. **Video Input**: The project takes a video file as input, where a thumb is placed in front of a smartphone camera, allowing light to pass through it.

2. **Brightness Calculation**: The brightness of each frame in the video is calculated using MATLAB.

3. **Signal Processing**: The brightness data is processed to emphasize the heartbeat-related signal by applying bandpass filtering.

4. **Peak Detection**: Peaks in the filtered signal are detected to find the intervals between heartbeats.

5. **Heart Rate Estimation**: The time intervals between heartbeats are used to estimate the heart rate in beats per minute (bpm).

## Requirements

To run this project, you need:

- MATLAB environment.
- Video file with the thumb covering the camera lens.

## Usage

1. Ensure you have the required video file in the project directory.
2. Open MATLAB and run the provided code.
3. The estimated heart rate (in bpm) will be displayed as 'bitpermin.'

## Results

The heart rate estimation results are stored in the 'bitpermin' variable. This value represents the average heart rate in beats per minute based on the video analysis.
## Autor 
JesusEJuarez
