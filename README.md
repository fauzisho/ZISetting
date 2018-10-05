# ZISetting
Simple setting UI based on UIKit TableView

## Installation

### CocoaPods

Use CocoaPods 0.36+, which adds support for Swift and embedded frameworks. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate ZISetting into your Xcode project using CocoaPods, specify it in your `Podfile`:

```
pod 'ZISetting'
```

## Screen
![ZISetting Screen](https://github.com/fauzisho/ZISetting/blob/master/settingview.png)


## Step by step

### implementing with ZisKeyType class

Simple implementation 

```swift
  entries = [[
              .CellType: UITableViewCellStyle.subtitle,
              .Title: "Sampel Setting 1",
              .AccessoryType: UITableViewCellAccessoryType.disclosureIndicator,
              .Image: "ic_vocher",
              .Subtitle: "Sub Setting 1",
              .CellAction:{ () in
                    // event when clicked Cell        
              },
              .AccessoryAction: { () in
                     // event when clicked Accessory    
              },
                    ]]

```
