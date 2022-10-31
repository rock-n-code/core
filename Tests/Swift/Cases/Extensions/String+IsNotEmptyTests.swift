//
//  String+IsNotEmptyTests.swift
//  SwiftExtensionsTests
//
//  Created by Javier Cicchelli on 30/10/2022.
//  Copyright © 2022 Röck+Cöde. All rights reserved.
//

import XCTest
import SwiftExtensions

final class StringIsNotEmptyTests: XCTestCase {

    // MARK: Properties
    
    private var string: String!
    private var result: Bool!
    
    // MARK: Tests
    
    func test_withEmptyString() throws {
        // GIVEN
        string = .empty
        
        // WHEN
        result = string.isNotEmpty
        
        // THEN
        XCTAssertFalse(result)
    }
    
    func test_withNotEmptyString() throws {
        // GIVEN
        string = "Some string goes in here..."
        
        // WHEN
        result = string.isNotEmpty
        
        // THEN
        XCTAssertTrue(result)
    }

}
