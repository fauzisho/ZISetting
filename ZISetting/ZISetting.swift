//
//  ZISetting.swift
//  Pods-Example
//
//  Created by Fauzi Sho on 24/09/18.
//

import Foundation

public class ZISetting : NSObject{
    
    class var bundle:Bundle{
        get{
            let podBundle   = Bundle(for: ZISetting.self)
            
            if let bundleURL = podBundle.url(forResource: "ZISetting", withExtension: "bundle") {
                return Bundle(url: bundleURL)!
            }else{
                return podBundle
            }
        }
    }
}
