# Changelog

All notable changes to this project will be documented in this file.

## [8.0.1-compatible] - 2025-10-30

### Added
- Enhanced compatibility fixes for modern Android versions
- Comprehensive error handling and null checks
- Support for Android 10+ scoped storage requirements
- Detailed documentation of fixes in CRASH_FIX_SUMMARY.md

### Fixed
- **Critical**: Fixed NullPointerException crash when selecting images from gallery
- **Critical**: Fixed improper request code handling in onActivityResult method
- Fixed optimized media picker request routing
- Fixed duplicate code paths in processResultFromGallery method
- Added null checks for imageUri and croppedFilePath to prevent crashes

### Changed
- Plugin ID changed from `cordova-plugin-camera` to `cordova-plugin-camera-compatible`
- Repository moved to https://github.com/go-dial/cordova-plugin-camera-compatible
- Enhanced error messages for better debugging
- Cleaned up code structure and removed redundant logic

### Technical Details
- Moved optimized media picker handling to beginning of onActivityResult method
- Added proper null validation before opening input streams
- Improved request code calculation logic for different picker types
- Enhanced compatibility with modern Android media access patterns

### Based On
- Original cordova-plugin-camera version 8.0.1-dev
- Apache Cordova Camera Plugin (Apache License 2.0)

## Migration from Original Plugin

To migrate from the original `cordova-plugin-camera`:

1. Remove the original plugin:
   ```bash
   cordova plugin remove cordova-plugin-camera
   ```

2. Install the compatible version:
   ```bash
   cordova plugin add cordova-plugin-camera-compatible
   ```

No code changes are required - the API remains identical.