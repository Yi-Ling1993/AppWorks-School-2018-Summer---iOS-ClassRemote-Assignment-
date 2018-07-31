//
//  Info.swift
//  4
//
//  Created by 劉奕伶 on 2018/7/29.
//  Copyright © 2018年 Appwork School. All rights reserved.
//

import Foundation
import UIKit

struct StationInfo {
    let StationID: String
    let StationName: String
    let StationAddress: String
    
    enum CodingKeys: String, CodingKey {
        case StationID
        case StationName
        case StationAddress
    }
    
    enum StationNameKeys: String, CodingKey {
        case Zh_tw
    }
}

extension StationInfo: Decodable {
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        StationID = try values.decode(String.self, forKey: .StationID)
        StationAddress = try values.decode(String.self, forKey: .StationAddress)
        
        let additionalInfo = try values.nestedContainer(keyedBy: StationNameKeys.self, forKey: .StationName)
        StationName = try additionalInfo.decode(String.self, forKey: .Zh_tw)
    }
}















