//
//  CellView.swift
//  SwiftUIPractice
//
//  Created by Shanim on 20/04/23.
//

import SwiftUI

struct CellView: View {
    var body: some View {
        ZStack {
            Color.red.opacity(0.2)

            VStack {
                Image(systemName: "heart.fill")
                    .resizable()
                    .foregroundColor(.red)
                    .frame(width: 25, height: 25)

                Text("Eyes")
                    .font(.headline)
                    .foregroundColor(.red)
            }

        }.frame(width: 90, height: 90)
            .cornerRadius(25)
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView()
    }
}
