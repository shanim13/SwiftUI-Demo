//
//  StartingView.swift
//  SwiftUIPractice
//
//  Created by Shanim on 20/04/23.
//

import SwiftUI

struct StartingView: View {
    
    var body: some View {
        NavigationView {

                ZStack {
                    VStack(spacing: 20) {
                        Image(systemName: "cup.and.saucer.fill")
                            .resizable()
                            .scaledToFit()
                            .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.15), radius: 8, x: 6, y: 8)
                            .foregroundColor(.brown)
                            .frame(maxWidth: 200)
//                            .scaleEffect(isAnimating ? 1.0 : 0.6)
                        Text("Coffee")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.8), radius: 2, x: 2, y: 2)
                        Text("Coffee Anytime and Everywhere")
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 16)
                            .frame(maxWidth: 480)
                            .fontWeight(.heavy)
                            .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.8), radius: 2, x: 2, y: 2)

                        NavigationLink(destination: TabbarView()) {
                            HStack {
                                Text("Get Your Coffee")
                                    .font(.headline)
                                    .foregroundColor(.brown)
                                Image(systemName: "arrowshape.turn.up.right.fill")
                                    .foregroundColor(.brown)
                            }
                        }
                    }
                }
                .frame(minWidth: 0, idealWidth: 0, maxWidth: .infinity, minHeight: 0, idealHeight: 0, maxHeight: .infinity, alignment: .center)
                .background(Color.brown.opacity(0.3))
                .cornerRadius(20)
                .padding(.horizontal,20)
        }
    }
}

struct StartingView_Previews: PreviewProvider {
    static var previews: some View {
        StartingView()
    }
}
