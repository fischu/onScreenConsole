<img align="right" width="400" src="https://raw.githubusercontent.com/fischu/onScreenConsole/master/OnScreenConsoleMockup.png">

# onScreenConsole
A debugging console directly on the app's screen. There were times during development of certain apps when I couldn't use Xcode's debugger console so an on screen one made perfect sense.

[![License](https://img.shields.io/badge/License-Apache_2.0-lightgray.svg)](LICENSE) ![Swift](https://img.shields.io/badge/Language-Swift_4.2-yellow.svg) ![Platform](https://img.shields.io/badge/Platform-iOS-blue.svg)

## Setup
### Compatibility
### Using [CocoaPods](http://cocoapods.org)
1. Add the pod `OnScreenConsole` to your [Podfile](http://guides.cocoapods.org/using/the-podfile.html).

  ```ruby
  pod 'OnScreenConsole'
  ```

1. Run `pod install` from Terminal, then open your app's `.xcworkspace` file to launch Xcode.
 ```swift
 import OnScreenConsole
 ```

That's it - now go debug your app whenever wherever!

## Usage
### Sample Code (Swift)

Initialize:

```swift
var console = OnScreenConsole(frame: CGRect(x: 10, y: 10, width: 200, height: 200)) 
// make sure to insert the view over you own UI in order to see it
view.insertSubview(console, at: 10)
```

Customize:

```swift
// Enable row numbers
console.showRowNumber = true
        
// Customization
console.backgroundColor = .clear
console.textColor = .green
console.font = UIFont(name: "Montserrat", size: 20)
```

Use:

```swift
console.newLineWith("this is not an error")
```

## Meta
Designed & built by [Mihai Fischer](http://mihaifischer.com) ([@fischu](https://github.com/fischu)). Distributed with the Apache License 2.0 license.
