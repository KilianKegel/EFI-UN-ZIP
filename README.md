# EFI[UN]ZIP
zip/unzip for UEFI 

## Revision history
### 20261115 Devel , v0.1.0.26
* compose entire project
	* add **toro C Library**
	* enable **Debug** to get Windows .EXE applications
	* enable **Release** to get UEFI .EFI applications
		* the EFIAPP is currently crashing when compressing
	* and mockup for currently unsupported (non-C-Standard) function `_chdir()`
	* add `buildnum.bat` to automatically update the build number in `BUILDNUM.h` and display the current version and build number
### 20261115, v0.0.0 Build 0
* initial checkin
