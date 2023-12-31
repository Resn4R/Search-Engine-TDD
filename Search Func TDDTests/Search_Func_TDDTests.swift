//
//  Search_Func_TDDTests.swift
//  Search Func TDDTests
//
//  Created by Vito Borghi on 26/10/2023.
//

import XCTest
@testable import Search_Func_TDD

final class Search_Func_TDDTests: XCTestCase {
    

    
    //1. If the search text is fewer than 2 characters, then should return no results. (It is an optimization feature of the search functionality.)
    func testReturnNoResultIfSearchIsLessThan2Chars() {
        let sample = SearchEngine()
        
        XCTAssertEqual(sample.search(for: "a"), [])
    }

   // 2. If the search text is equal to or more than 2 characters, then it should return all the city names starting with the exact search text.

    func testReturnNamesIfMoreThan2Chars() {
        let sample = SearchEngine()
        
        XCTAssertEqual(sample.search(for: "Va"), ["Valencia", "Vancouver"])
    }
    //3. The search functionality should be case insensitive
    func testCaseInsensitive() {
        let sample = SearchEngine()
        XCTAssertEqual(sample.search(for: "va"), ["Valencia", "Vancouver"])
    }
    
    //4. The search functionality should work also when the search text is just a part of a city name
    func testReturnCitiesWithPartOfName() {
        let sample = SearchEngine()
        XCTAssertEqual(sample.search(for: "ape"), ["Budapest"])
    }
    
    //5. If the search text is a “*” (asterisk), then it should return all the city names.
    func testReturnAllIfInputIsAsterisk() {
        let sample = SearchEngine()
        
        XCTAssertEqual(sample.search(for: "*"), ["Paris", "Budapest", "Skopje", "Rotterdam", "Valencia", "Vancouver", "Amsterdam", "Vienna", "Sydney", "New York City", "London", "Bangkok", "Hong Kong", "Dubai", "Rome", "Istanbul"])
    }
}
