//
//  TabbarView.swift
//  SwiftUIPractice
//
//  Created by Shanim on 15/07/23.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {

        TabView {
            MultiGridView()
            .tabItem {
                Label("Home", systemImage: "house")
            }
            
            OrderView()
                .tabItem() {
                    Label("Order", systemImage: "pencil.and.ellipsis.rectangle")
                }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .accentColor(.brown)
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        return TabbarView()
    }
}
