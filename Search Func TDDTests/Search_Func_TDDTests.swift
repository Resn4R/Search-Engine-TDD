//
//  Search_Func_TDDTests.swift
//  Search Func TDDTests
//
//  Created by Vito Borghi on 26/10/2023.
//

import XCTest
@testable import Search_Func_TDD

final class Search_Func_TDDTests: XCTestCase {
    
    let cities = ["Paris", "Budapest", "Skopje", "Rotterdam", "Valencia", "Vancouver", "Amsterdam", "Vienna", "Sydney", "New York City", "London", "Bangkok", "Hong Kong", "Dubai", "Rome", "Istanbul"]
    
    //1. If the search text is fewer than 2 characters, then should return no results. (It is an optimization feature of the search functionality.)
    func testReturnNoResultIfSearchIsLessThan2Chars() {
        let sample = SearchEngine()
        
        XCTAssertEqual(sample.search(for: "a"), [])
    }

}
