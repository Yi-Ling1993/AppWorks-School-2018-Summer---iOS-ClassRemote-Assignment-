//
//  InfoViewModel.swift
//  4
//
//  Created by 劉奕伶 on 2018/7/29.
//  Copyright © 2018年 Appwork School. All rights reserved.
//

import Foundation
import UIKit

struct StationInfoViewModel {
    let StationID: String
    let StationName: String
    let StationAddress: String
    
    init(model: StationInfo) {
        self.StationID = model.StationID
        self.StationName = model.StationName
        self.StationAddress = model.StationAddress
    }
    
}































