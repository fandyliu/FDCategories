# FDCategories
==============
[![Pod License](http://img.shields.io/cocoapods/l/FDCategories.svg?style=flat)](https://www.apache.org/licenses/LICENSE-2.0.html)&nbsp;
[![Pod Version](http://img.shields.io/cocoapods/v/FDCategories.svg?style=flat)](http://cocoadocs.org/docsets/FDCategories/)&nbsp;
[![Pod Platform](http://img.shields.io/cocoapods/p/FDCategories.svg?style=flat)](http://cocoadocs.org/docsets/FDCategories/)&nbsp;

This library provides some category for Foundation and UIKit.


Documentation
==============

You can build and install docset use `Docset` scheme in Xcode, `appledoc` need to be pre-installed. 
Or your can read the [Documentation](http://github.ibireme.com/doc/YYCategories/index.html) online.


Installation
==============

### CocoaPods

1. Add `pod 'FDCategories'` to your Podfile.
2. Run `pod install` or `pod update`.
3. Import \<FDCategories/FDCategories.h\>.


### Manually

1. Download all the files in the FDCategories subdirectory.
2. Add the source files to your Xcode project.
3. Import `YYCategories.h`.


Requirements
==============
This library requires `iOS 6.0+` and `Xcode 7.0+`.


Notice
==============
I want to use the APIs as if it was provided by system, so I don't add prefix in
these categories. This may cause some potential problems（such as conflict with other libraries), so if you just need some pieces of code
in this project, pick them out and don't import the whole library.


License
==============
FDCategories is provided under the MIT license. See LICENSE file for details.
