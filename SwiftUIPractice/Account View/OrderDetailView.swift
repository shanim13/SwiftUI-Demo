//
//  OrderCoffeeRowView.swift
//  SwiftUIPractice
//
//  Created by Shanim on 15/07/23.
//

import SwiftUI

struct OrderDetailView: View {
    var body: some View {
        NavigationView {
            ZStack{
                Circle().fill(Color.brown.opacity(0.8))
                Image("Cupp")
                    .resizable()
                    .frame(width: 150, height: 150)
            }
        }
    }
}

struct OrderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        OrderDetailView()
    }
}
