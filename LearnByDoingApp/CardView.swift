//
//  CardView.swift
//  LearnByDoingApp
//
//  Created by Usha Sai Chintha on 22/09/22.
//

import SwiftUI

struct CardView: View {
    
    var gradient: [Color] = [Color("Color01"), Color("Color02")]
    
    var body: some View {
        ZStack{
            Image("developer-no1")
            
            VStack{
                Text("SwiftUI")
                    .foregroundColor(Color.white)
                    .fontWeight(.heavy)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                
                Text("Better apps, less code")
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .italic()
            }
            .offset(y: -218)
            
            Button {
                print("Button Tapped")
            } label: {
                HStack {
                    Text("Learn".uppercased())
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .accentColor(Color.white)
                    
                 Image(systemName: "arrow.right.circle")
                        .font(Font.title.weight(.medium))
                        .accentColor(Color.white)
                }
                .padding(.vertical)
                .padding(.horizontal, 24)
                .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
            }
            .offset(y: 210)
        }
        .frame(width: 335, height: 545)
        //        .background(.pink)
        .background(LinearGradient(gradient: Gradient(colors: gradient), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .shadow(radius: 8)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
