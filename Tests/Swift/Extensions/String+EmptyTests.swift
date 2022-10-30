//
//  String+EmptyTests.swift
//  CoreSwiftTests
//
//  Created by Javier Cicchelli on 30/10/2022.
//  Copyright © 2022 Röck+Cöde. All rights reserved.
//

import XCTest
import CoreSwift

final class StringEmptyTests: XCTestCase {
    
    // MARK: Properties
    
    private var result: String!
    
    // MARK: Tests

    func testEmpty() throws {
        // GIVEN
        // WHEN
        result = .empty
        
        // THEN
        XCTAssertEqual(result, "")
    }

}
