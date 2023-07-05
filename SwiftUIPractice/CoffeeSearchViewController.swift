//
//  CoffeeSearchViewController.swift
//  SwiftUIPractice
//
//  Created by Shanim on 04/07/23.
//

import SwiftUI

struct CoffeeSearchViewController: View {

    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    @EnvironmentObject var coffeeVM: CoffeeViewModel

    var backButton: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }, label: {
            HStack {
                Image(systemName: "cup.and.saucer.fill")
                    .foregroundColor(.brown)
                Text("Cafes")
                    .foregroundColor(.brown)
            }
        })
    }
    
    var body: some View {

        VStack(spacing: 30) {

            VStack(alignment: .center) {

                Text("Coffees")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.brown)

                Text("Browse our finest coffee")
                    .foregroundColor(.brown)
            }

            VStack(alignment: .leading) {
                TextField("Search", text: $coffeeVM.searchText)
                    .font(.body)
                    .padding()
                    .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.2662717301)))
                    .cornerRadius(20)
                    .onChange(of: coffeeVM.searchText) { text in
                        coffeeVM.filterSearchCase()
                    }
            }
            .padding(.horizontal, 50)

            ScrollView {
                if coffeeVM.filteredCoffees.count > 0 {
                    ForEach(coffeeVM.filteredCoffees) { coffee in
                        CoffeeSearchRow(coffee: coffee)
                            .padding(.horizontal)
                    }
                } else {
                    Text("No coffee found 😥")
                }
            }
            .padding(.horizontal)
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                backButton
            }
        }
    }
}

struct CoffeeSearchViewController_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeSearchViewController()
            .environmentObject(CoffeeViewModel())
    }
}
