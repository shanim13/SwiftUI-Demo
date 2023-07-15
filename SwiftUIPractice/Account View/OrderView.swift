//
//  OrderView.swift
//  SwiftUIPractice
//
//  Created by Shanim on 15/07/23.
//

import SwiftUI

struct OrderView: View {

    var body: some View {
        NavigationView {
            List() {
                HStack {
                    Image("Cappuccino")
                        .imageScale(.large)
                    Text("Cappuccino")
                        .fontWeight(.semibold)
                }
                HStack {
                    Image("Mocha")
                        .imageScale(.large)
                    Text("Mocha")
                        .fontWeight(.semibold)
                }
                HStack {
                    Image("Lattee")
                        .imageScale(.large)
                    Text("Lattee")
                        .fontWeight(.semibold)
                }
                HStack {
                    Image("coldCoffee")
                        .imageScale(.large)
                    Text("coldCoffee")
                        .fontWeight(.semibold)
                }
                HStack {
                    Image("Icecream")
                        .imageScale(.large)
                    Text("Icecream")
                        .fontWeight(.semibold)
                }
                HStack {
                    Image("juice")
                        .imageScale(.large)
                    Text("juice")
                        .fontWeight(.semibold)
                }
                HStack {
                    Image("cakes")
                        .imageScale(.large)
                    Text("cakes")
                        .fontWeight(.semibold)
                }
            }
            .navigationTitle("Menu")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
