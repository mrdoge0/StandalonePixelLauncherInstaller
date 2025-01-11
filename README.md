# Standalone Pixel Launcher Installer
### Pixel Launcher, as a standalone installer zip with all its core dependencies. That's it. (This is NOT an official Google product, it's distributed with ABSOLUTELY NO WARRANTY!)
### I'M NOT HAVING ANY RESPONSIBILITY, USE AT YOUR OWN RISK!
(Tested on LineageOS 22.1 with MindTheGapps)

## Does it delete the OG launcher of your ROM?
No. But it may (if a problem arises)

## How can I pack myself?
### Requirements: a Linux environment with access to git, basic archiving commands (tar, zip etc.) and wget. That's it.
* Clone the repository.
  > `git clone https://github.com/mrdoge0/StandalonePixelLauncherInstaller -b 15.0.0 && cd StandalonePixelLauncherInstaller`
* Get the proprietary blobs. (which are Pixel Launcher and their dependencies)
  > `chmod +x ./GetProprietaryBlobs.sh && ./GetProprietaryBlobs.sh`
* (If you will do any modifications, you can do it here.)
* Pack everything up.
  > `zip -r ../[package_name].zip *`
* Install and see if it works or not.
