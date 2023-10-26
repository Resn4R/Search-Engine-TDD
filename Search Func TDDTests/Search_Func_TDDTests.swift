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
        
        XCTAssertEqual(sample.search(for: "ome"), ["Rome"])
    }
}
