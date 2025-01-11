#!/usr/bin/env bash
# Get Proprietary Blobs (which is everything that makes this package functional :D)

# Download
echo "Downloading tarball..."
wget -q --show-progress "https://github.com/mrdoge0/StandalonePixelLauncherInstaller/releases/download/15.0.0/ProprietaryBlobs.tar.xz" -O ProprietaryBlobs.tar.xz # main process
WGET_EXIT=$?
if [ "$WGET_EXIT" -ne 0 ]; then
  echo "Failed to download."
  exit $WGET_EXIT
fi

# Extract
echo ""
echo "Extracting tarball..."
tar -xpvf ProprietaryBlobs.tar.xz # main process
TAR_EXIT=$?
if [ "$TAR_EXIT" -ne 0 ]; then
  echo "Failed to extract."
  exit $TAR_EXIT
fi

# The last control before exit
if [ -d "system/product" ] && [ -d "system/system_ext" ]; then
  echo ""
  echo "Everything is correct! Cleaning up..."
else
  echo "Blobs extracted, but there may be errors? (Pls manually check the contents.)"
  exit 1
fi

# Cleanup
rm -v "ProprietaryBlobs.tar.xz"
RM_EXIT=$?
if [ "$RM_EXIT" -ne 0 ]; then
  echo "Failed to clean, but ignoring."
fi

# Exit
echo ""
echo "Finished!"
exit 0
