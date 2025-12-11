# Dynacord DSP260 Audio Driver for Windows 10/11 x64

[![Release](https://img.shields.io/github/v/release/AnthonyDEV8303/AudioDevices-DSP-Dynacord-DSP260)](https://github.com/AnthonyDEV8303/AudioDevices-DSP-Dynacord-DSP260/releases) 
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](LICENSE)
[![Windows](https://img.shields.io/badge/OS-Windows%2010%2F11%20x64-green)]()

This repository contains a ready-to-use installer and source files for the Dynacord DSP260 audio driver.  
Ideal for Windows 10/11 x64 users and developers who want to customize or rebuild the installer using Inno Setup.

---

## Features
- Easy driver installation for Windows 10/11 x64  
- Source files included for customization  
- Fully editable Inno Setup script (.iss)  
- Compatible with DSP Dynacord DSP260 devices  

---

  ## Installation

1. Connect your Dynacord DSP260 device to your PC via USB.  
2. Go to the [Releases](https://github.com/AnthonyDEV8303/AudioDevices-DSP-Dynacord-DSP260/releases) section.  
3. Download the latest installer `.exe`.  
4. Run the installer and follow the on-screen instructions.  
5. Enjoy your Dynacord DSP260 driver!  

> ⚠️ Make sure to run the installer with administrator privileges and that the DSP device is connected via USB before starting the installation.

---

## Rebuilding / Customizing the Installer

1. Open the `.iss` script in [Inno Setup](https://jrsoftware.org/isinfo.php) compiler.  
2. Rename the `.ico` file path if needed.  
3. Edit the `DriverPath` entry:
   ```text
   DriverPath "C:\Users\Anthony\Desktop\Drivers"
