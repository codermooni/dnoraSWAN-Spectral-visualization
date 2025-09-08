# MATLAB Spectral Visualization Script for DNORA/SWAN

This repository provides the **MATLAB Spectral Visualization Script for DNORA/SWAN output files**.   
The script generates **high-resolution 2D plots** of significant wave height (**Hsig**) with arrows indicating the mean wave direction (**DIR**).
It was developed to support **SWAN wave model** post-processing when using the **DNORA** tool (Christakos et al., 2023).  
The script can be applied to **extreme wave simulations** or other SWAN/DNORA case studies, allowing fast and reproducible spectral visualization.
---

## Features
- Loads DNORA/SWAN `.mat` output files.
- Plots **Hsig [m]** fields with directional arrows.
- Supports **full arrow density (100%)** or **reduced density (1%)** for clarity.
- Produces figures identical to Fig.6 used in the manuscript submission to *Environmental Modelling & Software*.
- Provides a reproducible workflow for spectral visualization.

---

## Requirements
- **MATLAB R2025a or later** (developed using MATLAB trial version).   
- Input: DNORA/SWAN `.mat` output file (e.g., `Gibraltar_Strait_20220404.mat`).  

---

## Usage
1. Clone or download this repository.  
2. Open MATLAB and run: 

``matlab
   MATLAB_Spectral_Visualization_Script_for_DNORA.m
  
3. Select the DNORA/SWAN `.mat` file when prompted.  

The script generates:

- **100% arrows plot** (all directional vectors).  
- **1% arrows plot** (reduced density, Fig. 6 in manuscript).  

---

## Example

- **Case study:** Extreme Wave Event, Strait of Gibraltar, 4 April 2022  
- **Figure 6:** 2-hour nonstationary simulation with 1% arrows  
- **Outputs:** High-resolution plots of significant wave heights with directional vectors  

---

## Software Availability

- **Name of Software:** MATLAB Spectral Visualization Script for DNORA/SWAN
- **Software input file:** Gibraltar_Strait_20220404.mat (DNORA/SWAN post-processing calibrated model binary output file)
- **Developer:** Corresponding author of this manuscript 
- **Year first available:** 2025  
- **Programming language:** MATLAB (tested with R2025a, 30-day trial license) 
- **License:** License: CC BY-NC-ND 4.0 (Creative Commons Attribution–NonCommercial–NoDerivatives)
- **Source code:** GitHub (this repository) 
- **Availability for review:** An anonymized, password-protected ZIP file containing the script and the software input file
     (Gibraltar_Strait_20220404.mat)has been uploaded as supplementary material, with the password provided to the editors. 
	 Upon acceptance,the code and documentation will be made openly available via GitHub and Zenodo under the CC BY-NC-ND 4.0 license.
- **Cost:** Free for academic research and educational purposes.

---

## License

This project is released under the **Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License (CC BY-NC-ND 4.0)**.  

- You are free to **share** — copy and redistribute the material in any medium or format.  
- **Attribution required** — you must give appropriate credit.  
- **NonCommercial** — you may not use the material for commercial purposes.  
- **NoDerivatives** — if you remix, transform, or build upon the material, you may not distribute the modified material.  

For full details, see the [LICENSE](LICENSE) file or visit:  
[https://creativecommons.org/licenses/by-nc-nd/4.0/](https://creativecommons.org/licenses/by-nc-nd/4.0/)



