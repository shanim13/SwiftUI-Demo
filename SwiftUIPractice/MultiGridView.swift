//
//  MultiGridView.swift
//  SwiftUIPractice
//
//  Created by Shanim on 26/04/23.
//

import SwiftUI

struct MultiGridView: View {

    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    @State var gridLayout = [GridItem()]

    var backButton: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }, label: {
            HStack{
                Image(systemName: "cup.and.saucer.fill")
                    .foregroundColor(.brown)
                Text("Back")
                    .foregroundColor(.brown)
            }
        })
    }

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 20) {
                    ForEach(sampleCafes) { cafe in

                        Image(cafe.image)
                            .resizable()
                            .scaledToFill()
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .frame(maxHeight: 150)
                            .cornerRadius(10)
                            .shadow(color: Color.primary.opacity(0.3), radius: 1)

                        LazyVGrid(columns: [GridItem(.adaptive(minimum: 50))]) {
                            ForEach(cafe.coffeePhotos) { coffeePhotos in

                                NavigationLink(destination: CoffeeFeedView( coffeeImage: coffeePhotos.name)) {
                                    Image(coffeePhotos.name)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(minWidth: 0, maxWidth: .infinity)
                                        .frame(height: 50)
                                        .cornerRadius(10)
                                }
                            }
                        }
                        .frame(minHeight: 0,maxHeight: .infinity, alignment: .top)
                        .animation(.easeIn, value: gridLayout.count)
                    }
                }
                .padding(.all, 10)
                .animation(.default, value: gridLayout.count)
            }
            .navigationTitle("Cafes")
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        self.gridLayout = Array(repeating: .init(.flexible()), count: self.gridLayout.count % 4 + 1)

                    } label: {
                        Image(systemName: "square.grid.2x2")
                            .font(.title)
                            .foregroundColor(.brown)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    
                    NavigationLink(destination: CoffeeSearchViewController(), label:  {
                        Image(systemName: "magnifyingglass")
                            .font(.title)
                            .foregroundColor(.brown)
                    })
                }
            }
        }
    }
}

struct MultiGridView_Previews: PreviewProvider {
    static var previews: some View {
        MultiGridView()
    }
}
