<a href="https://tldrlegal.com/license/mit-license" target="_blank"><img src="https://img.shields.io/apm/l/vim-mode.svg?maxAge=2592000"></a>
<a href="http://www.animaapp.com" target="_blank"><img src="https://animaapp.s3.amazonaws.com/github/ExportCode/code_byanima.png" height="20"></a>
<img src="https://img.shields.io/badge/language-Obj--C-blue.svg">
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

# AnyDOv UI Kit

AnyDOv UI Kit was designed by shai@any.do.


## CocoaPods installation

1. In your podfile add

   ``` pod 'AnyDOvUIKit', :git => 'https://github.com/shaibarca/anydo_v2.2-ui-kit.git'```
2. On the terminal, in your project folder, run ```pod install```



## Usage

`APAnyDOvManager` Gives you an easy access to the storyboard.
Here's an easy way to start:

On `application:didFinishLaunchingWithOptions:` use this to start with AnyDOv UI Kit:

<img src="https://img.shields.io/badge/language-Swift-orange.svg">
```
import AnyDOvUIKit
```
```
   APAnyDOvManager.shared().theme?.apply();
   self.window?.rootViewController = APAnyDOvManager.shared().initialVC();
```
<img src="https://img.shields.io/badge/language-Obj--C-blue.svg">
```
#import <AnyDOvUIKit/APAnyDOvManager.h>
```
```
   [[APAnyDOvManager shared].theme apply];
   [self.window setRootViewController:[[APAnyDOvManager shared] initialVC]];
```