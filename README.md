# MATLAB Spectral Visualization Script for DNORA/SWAN
This repository provides the **MATLAB Spectral Visualization Script for DNORA/SWAN output files**.   
The script generates **high-resolution 2D plots** of significant wave height (**Hsig**) with arrows indicating the mean wave direction (**DIR**).
It was developed to support **SWAN wave model** post-processing when using the **DNORA** tool (Christakos et al., 2023).  
The script can be applied to DNORA/SWAN output files, allowing fast and reproducible spectral visualization.

---

## Features
- Loads DNORA/SWAN `.mat` output files.
- Plots **Hsig [m]** fields with directional arrows.
- Supports **full arrow density (100%)** or **reduced density (1%)** for clarity.
- Provides a reproducible workflow for spectral visualization.

---

## Requirements
- **MATLAB R2021a or later** (developed using R2025a MATLAB trial version).   
- Input: DNORA/SWAN `.mat` output file.

---

## Usage
1. Clone or download this repository.  
2. Open MATLAB and run: 

``matlab
   MATLAB_Spectral_Visualization_Script_for_DNORA.m
  
3. Select the DNORA/SWAN `.mat` file when prompted.
   
4. Choose the Hsig field (snapshot) for your nonstationary simulation output file,
   e.g.:
   
   Hsig_20220404_010000 (1-hour simulation)
   Hsig_20220404_020000 (2-hour simulation)  

5.The script generates:

- **100% arrows plot** (all directional vectors).  
- **1% arrows plot** .  














