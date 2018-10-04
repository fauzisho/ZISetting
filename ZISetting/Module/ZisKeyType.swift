//
//  ZisEnum.swift
//  Pods-Example
//
//  Created by Fauzi Sho on 24/09/18.
//

import Foundation

public enum ZisKeyType: String {
    case cellType           // Value type is UITableViewCellStyle
    case title              // Value type is String
    case subtitle           // Value type is String
    case accessoryType      // Value type is UITableViewCellAccessoryType
    case accessoryView      // Value type is UIView or it's subclasses
    case image              // Value type is String of image name
    case cellAction         // Value type is closures. It will be executed when the table view cell is tapped
    case accessoryAction    // Value type is closures. It will be executed when the accessory button is tapped
    case detailAction       // Value type is closures. It will be executed when the detail button is tapped
}
