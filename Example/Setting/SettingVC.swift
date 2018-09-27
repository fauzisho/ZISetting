//
//  SettingVC.swift
//  Example
//
//  Created by Fauzi Sho on 24/09/18.
//  Copyright © 2018 Uzi. All rights reserved.
//

import Foundation
import UIKit
import ZISetting

class SettingVC : ZisSettingView{
    override func viewDidLoad() {
        self.title = "Setting View"
        entries = [
            [
                [
                    .CellType: UITableViewCellStyle.subtitle,
                    .Title: "Sampel Setting 1",
                    .AccessoryType: UITableViewCellAccessoryType.detailButton,
                    .Subtitle: { () -> String? in return "Sub Setting 1"},
                    .CellAction:{ () in
                        
                    },
                    .AccessoryAction: { () in
                        
                    },
                    ],
                [
                    .Title: "Sample Setting 2",
                    .AccessoryType: UITableViewCellAccessoryType.disclosureIndicator,
                    .Image: "ic_vocher",
                    .CellAction: { () in
                        
                    },
                    ],
                ]
        ]
    }
}

extension SettingVC {
    
}
