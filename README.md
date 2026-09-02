# Multi-Segment Cam Motion Simulation
Project developed for the Mechanics of Machines 2 exam - Automation Engineering

## Overview
This project implements a generalized cam profile generator capable of handling an arbitrary number of motion segments, each defined by lift, angular duration and motion law type (parabolic, cycloidal, or 5th-degree polynomial).
The MATLAB script computes displacement, velocity, and thrust angle for both centered and eccentric followers.

## Objective
- Allow the user to define any number of cam motion segments
- Implement three selectable motion laws: parabolic, cycloidal, and 5th‑degree polynomial
- Compute displacement and velocity profile
- Compute thrust angle for centered follower and for eccentric follower

## Images
### 1. Angular displacement diagram
<img width="1624" height="1026" alt="image" src="https://github.com/user-attachments/assets/9d307be9-f748-4573-a106-473aaa690e62" />

### 2. Comparison of the thrust angle for centered and eccentric followers
<img width="1536" height="1036" alt="image" src="https://github.com/user-attachments/assets/48721682-80a9-4aae-9a79-98dffb8252be" />


## How to run the project
-	Clone the repository 
-	Open MATLAB 
-	run('src/main.m')

## Requirements
MATLAB (no additional toolboxes required)
