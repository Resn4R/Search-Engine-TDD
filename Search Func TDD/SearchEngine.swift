//
//  SearchEngine.swift
//  Search Func TDD
//
//  Created by Vito Borghi on 26/10/2023.
//

import Foundation


struct SearchEngine {
    
    let cities = ["Paris", "Budapest", "Skopje", "Rotterdam", "Valencia", "Vancouver", "Amsterdam", "Vienna", "Sydney", "New York City", "London", "Bangkok", "Hong Kong", "Dubai", "Rome", "Istanbul"]
    
    func search(for input: String) -> [String] {
        if input == "*" {
            return cities
        } else {
            guard input.count >= 2 else { return [] }
            
            return cities.filter {
                $0.lowercased().contains(input.lowercased())
            }
        }
    }
    
}
