#!/bin/bash

# Setup Git Repository for cordova-plugin-camera-compatible
# This script initializes the git repository and sets up the remote

echo "Setting up Git repository for cordova-plugin-camera-compatible..."

# Initialize git repository if not already initialized
if [ ! -d ".git" ]; then
    git init
    echo "Git repository initialized."
else
    echo "Git repository already exists."
fi

# Add the remote repository
git remote remove origin 2>/dev/null || true
git remote add origin https://github.com/go-dial/cordova-plugin-camera-compatible.git
echo "Remote origin set to: https://github.com/go-dial/cordova-plugin-camera-compatible.git"

# Add all files
git add .
echo "All files added to staging."

# Create initial commit
git commit -m "Initial commit: Compatible version of cordova-plugin-camera with Android fixes

- Fixed gallery selection crash on modern Android devices
- Improved optimized media picker support
- Added comprehensive error handling
- Enhanced scoped storage compatibility
- Cleaned up duplicate code paths

Based on cordova-plugin-camera 8.0.1-dev with compatibility fixes."

echo "Initial commit created."

echo "
Next steps:
1. Make sure you have created the repository at: https://github.com/go-dial/cordova-plugin-camera-compatible
2. Run: git push -u origin main
3. Your plugin will be available for installation via:
   cordova plugin add https://github.com/go-dial/cordova-plugin-camera-compatible.git
"