//
//  ZisEnum.swift
//  Pods-Example
//
//  Created by Fauzi Sho on 24/09/18.
//

import Foundation

public enum ZisKeyType: String {
    case CellType           // Value type is UITableViewCellStyle
    case Title              // Value type is String
    case Subtitle           // Value type is String
    case AccessoryType      // Value type is UITableViewCellAccessoryType
    case AccessoryView      // Value type is UIView or it's subclasses
    case Image              // Value type is String of image name
    case CellAction         // Value type is closures. It will be executed when the table view cell is tapped
    case AccessoryAction    // Value type is closures. It will be executed when the accessory button is tapped
    case DetailAction       // Value type is closures. It will be executed when the detail button is tapped
}
