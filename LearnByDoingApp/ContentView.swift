//
//  ContentView.swift
//  LearnByDoingApp
//
//  Created by Usha Sai Chintha on 22/09/22.
//

import SwiftUI

struct ContentView: View {
    
    var cards: [Card] = cardData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(cards) { card in
                    CardView(card: card)
                }
            }
            .padding(30)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
