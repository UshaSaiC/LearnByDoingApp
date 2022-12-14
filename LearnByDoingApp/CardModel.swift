//
//  CardModel.swift
//  LearnByDoingApp
//
//  Created by Usha Sai Chintha on 22/09/22.
//

import SwiftUI

struct Card: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var imageName: String
    var callToAction: String
    var message: String
    var gradientColors: [Color]
}
