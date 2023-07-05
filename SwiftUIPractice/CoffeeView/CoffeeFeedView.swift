//
//  CoffeeFeedView.swift
//  SwiftUIPractice
//
//  Created by Shanim on 20/04/23.
//

import SwiftUI

struct CoffeeFeedView: View {

    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var coffeeImage: String

    var backButton: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "cup.and.saucer.fill")
                .foregroundColor(.brown)
            Text("Back")
                .foregroundColor(.brown)
        })
    }

//    @State var gridLayout: [GridItem] = [GridItem()]

//    var body: some View {
//        NavigationView {
//            ScrollView {
//                LazyVGrid(columns: gridLayout, spacing: 10){
//
//                    ForEach(samplePhotos.indices, id: \.self) { index in
//
//                        Image(samplePhotos[index].name)
//                            .resizable()
//                            .scaledToFill()
//                            .frame(minWidth: 0, maxWidth: .infinity)
//                            .frame(height: gridLayout.count == 1 ? 200 : 100)
//                            .cornerRadius(10)
//                            .shadow(color: Color.primary.opacity(0.3) ,radius: 1)
//                    }
//                }
//                .padding(.all, 10)
//                .animation(.default, value: gridLayout.count)
//            }
//            .navigationTitle("Coffee Feed")
//            .toolbar {
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    Button {
//                        self.gridLayout = Array(repeating: .init(.flexible()), count: self.gridLayout.count % 4 + 1)
//
//                    } label: {
//                        Image(systemName: "square.grid.2x2")
//                            .font(.title)
//                            .foregroundColor(.primary)
//                    }
//                }
//            }
//        }
//    }

    var body: some View {

        Image(coffeeImage)
            .resizable()
            .scaledToFill()
            .frame(minWidth: 0, maxWidth: .infinity)
//            .frame(height: gridLayout.count == 1 ? 200 : 100)
            .cornerRadius(10)
            .shadow(color: Color.primary.opacity(0.3) ,radius: 1)
            .padding(.horizontal, 20)
            .navigationBarItems(leading: backButton)
            .navigationBarBackButtonHidden(true)
    }
}

struct CoffeeFeedView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeFeedView(coffeeImage: "coffee-1")
    }
}
