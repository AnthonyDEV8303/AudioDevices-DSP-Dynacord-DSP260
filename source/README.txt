Dynacord DSP260 Audio Driver for Windows 10/11 x64

This repository contains a ready-to-use installer and source files for the Dynacord DSP260 audio driver.
Ideal for Windows 10/11 x64 users and developers who want to customize or rebuild the installer using Inno Setup.

Features:
- Easy driver installation for Windows 10/11 x64
- Source files included for customization
- Fully editable Inno Setup script (.iss)
- Compatible with DSP Dynacord DSP260 devices

Installation:
1. Connect your Dynacord DSP260 device to your PC via USB.
2. Go to the Releases section on GitHub.
3. Download the latest installer (.exe).
4. Run the installer and follow the on-screen instructions.
5. Enjoy your Dynacord DSP260 driver!

Note: Make sure to run the installer with administrator privileges and that the DSP device is connected via USB before starting the installation.

Rebuilding / Customizing the Installer:
1. Open the .iss script in Inno Setup compiler.
2. Rename the .ico file path if needed.
3. Edit the DriverPath entry:
   DriverPath "C:\Users\Anthony\Desktop\Drivers"
   Replace with your own folder containing "basedriverx64".
4. Build the script in Inno Setup.
5. Your custom installer is ready!

Source Files:
The "source" folder contains:
- The Inno Setup script (.iss)
- All files needed to rebuild the installer

Notes:
- Tested on Windows 10/11 x64.
- Make sure to run the installer with administrator privileges.
- Have an up-to-date antivirus when installing executables.

Contact:
AnthonyDEV: anthonydev8303@protonmail.com

License:
This project is licensed under the GNU General Public License v3.0 (GPL-3.0) - see the LICENSE file for details.