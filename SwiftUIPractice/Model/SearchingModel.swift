//
//  SearchingModel.swift
//  SwiftUIPractice
//
//  Created by Shanim on 04/07/23.
//

import Foundation
import SwiftUI

struct Coffee: Identifiable, Decodable {
    let id: Int
    let uid: String
    let blend_name: String
    let origin: String
    let variety: String
    let notes: String
    let intensifier: String
}

extension Coffee {
    var blendName: String{ return blend_name }
}

