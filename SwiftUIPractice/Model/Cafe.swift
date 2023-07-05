//
//  Cafe.swift
//  SwiftUIPractice
//
//  Created by Shanim on 26/04/23.
//

import Foundation
import SwiftUI

struct Cafe: Identifiable {

    var id = UUID()
    var image: String
    var coffeePhotos: [Photo] = []
}

let sampleCafes: [Cafe] = {

    var cafes = (1...18).map { Cafe(image: "cafe-\($0)") }

    for index in cafes.indices {
        let random = Int.random(in: 2...12)
        cafes[index].coffeePhotos = (1...random).map { Photo(name: "coffee-\($0)") }
    }

    return cafes
}()
