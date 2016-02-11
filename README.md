# iOS-DisplayingBitmaps

This project shows a sample to share code between Android application and iOS application with [J2ObjC] (https://github.com/google/j2objc) which is translation tool from Google.

## License
See [LICENSE](https://github.com/sfuku7/iOS-DisplayingBitmaps/blob/master/LICENSE).

And this project uses below projects with modifications, you can find software license in each projects
* android-DisplayingBitmaps
  * https://github.com/googlesamples/android-DisplayingBitmaps
* CollectionView-Simple
  * https://developer.apple.com/library/ios/samplecode/CollectionView-Simple/Introduction/Intro.html

And this project links JRE runtime which is built with J2ObjC, see https://github.com/google/j2objc.

## Build Requirements

* J2ObjC 1.0.0 (https://github.com/google/j2objc)
* Xcode 7.2

## Build and Run

1. Build and install J2ObjC, see https://github.com/google/j2objc. Just do 'make dist'.
2. Open project 'ios/CollectionView.xcodeproj' with Xcode
3. Set 'j2ojc_distribution' variable.
  1. Open project 'CollectionView'
  2. Select 'Build Settings'
  3. Find 'j2ojc_distribution'
  4. Set 'j2ojc_distribution' as your J2ObjC distribution path.
4. Push the 'build and run' button of Xcode

## How to translate with J2ObjC

Translated codes are already included in this project. But you can try translation from Java to Objective-C with below steps.

```
$ cd android
$ git submodule init
Submodule 'android' (git@github.com:sfuku7/android-DisplayingBitmaps.git) registered for path '../android'
$ git submodule update
$ cd ../
$ J2OBJC_DISTRIBUTION=/path/to/j2objc/dist make
```
