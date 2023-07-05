//
//  CoffeeViewModel.swift
//  SwiftUIPractice
//
//  Created by Shanim on 04/07/23.
//

import Foundation

final class CoffeeViewModel: ObservableObject {

    var allCoffees: [Coffee] = []
    @Published var filteredCoffees: [Coffee] = []
    @Published var searchText = ""

    init() {
        fetchCoffees()
    }

    func fetchCoffees() {
        guard let url = URL(string: "https://random-data-api.com/api/coffee/random_coffee?size=20") else { fatalError("Missing URL")}

        let urlRequest = URLRequest(url: url)
        let dataTask = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in

            if let error = error {
                print("Request error: ", error)
                return
            }

            guard let response = response as? HTTPURLResponse else { return }

            if response.statusCode == 200 {
                guard let data = data else { return }

                DispatchQueue.main.async {
                    do {
                        self.allCoffees = try JSONDecoder().decode([Coffee].self, from: data)
                        self.filteredCoffees = self.allCoffees
                    } catch let error {
                        print("Error decoding: ", error)
                    }
                }
            }
        }

        dataTask.resume()
    }

    func filterSearchCase() {
        let lowerCasedST = searchText.lowercased()

        if searchText.count > 1 {
            var matchingCoffees: [Coffee] = []

            allCoffees.forEach { coffee in

                let searchContent = coffee.blendName + coffee.intensifier + coffee.notes + coffee.origin + coffee.variety
                if searchContent.lowercased().range(of: lowerCasedST, options: .regularExpression) != nil {
                    matchingCoffees.append(coffee)
                }
            }

            self.filteredCoffees = matchingCoffees
        } else {
            filteredCoffees = allCoffees
        }
    }
    
}
