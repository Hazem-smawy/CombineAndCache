//
//  Model.swift
//  CombineAndCache
//
//  Created by hazem smawy on 10/23/22.
//

import Foundation
import SwiftUI


struct PhotoModel:Identifiable, Codable {
    let albumId: Int
    let id:Int
    let title:String
    let url:String
    let thumbnailUrl:String  
}
