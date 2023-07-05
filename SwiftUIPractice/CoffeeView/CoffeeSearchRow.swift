//
//  CoffeeSearchRow.swift
//  SwiftUIPractice
//
//  Created by Shanim on 04/07/23.
//

import SwiftUI

struct CoffeeSearchRow: View {
    var coffee: Coffee

    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Text("☕️")
                    .font(.title)
                    .padding(.trailing, 12)

                VStack(alignment: .leading) {
                    Text(coffee.blendName)
                        .bold()
                        .foregroundColor(.brown)

                    VStack(alignment: .leading) {
                        Text("From \(coffee.origin)")
                        Text(coffee.notes).italic()
                    }
                    .font(.caption)
                }
            }
            Divider().padding(.bottom, 12).padding(.top, 8)
        }
        .padding(.horizontal, 12)
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(12.0)
    }
}

struct CoffeeSearchRow_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeSearchRow(coffee: Coffee.init(id: 0, uid: "", blend_name: "", origin: "", variety: "", notes: "", intensifier: ""))
    }
}
