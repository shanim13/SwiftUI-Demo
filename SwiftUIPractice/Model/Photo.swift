//
//  Photo.swift
//  SwiftUIPractice
//
//  Created by Shanim on 20/04/23.
//

import Foundation
import SwiftUI

struct Photo: Identifiable {

    var id = UUID()
    var name: String

}

let samplePhotos = (1...20).map {Photo(name: "coffee-\($0)") }
