//
//  Process+IsSuccessfulExitTests.swift
//  FoundationExtensionsTests
//
//  Created by Javier Cicchelli on 31/10/2022.
//  Copyright © 2022 Röck+Cöde. All rights reserved.
//

#if os(macOS) || targetEnvironment(macCatalyst)
import XCTest
import Foundation
import FoundationExtensions

final class ProcessIsSuccessfulExitTests: XCTestCase {

    // MARK: Properties
    
    private var process: ProcessExitable!
    private var result: Bool!

    // MARK: Tests
    
    func test_withExitTerminationReason_andZeroTerminationStatus() throws {
        // GIVEN
        process = MockProcess(
            terminationReason: .exit,
            terminationStatus: 0
        )
        
        // WHEN
        result = process.isSuccessfulExit
        
        // THEN
        XCTAssertTrue(result)
    }
    
    func test_withExitTerminationReason_andNonZeroTerminationStatus() throws {
        // GIVEN
        process = MockProcess(
            terminationReason: .exit,
            terminationStatus: 1
        )
        
        // WHEN
        result = process.isSuccessfulExit
        
        // THEN
        XCTAssertFalse(result)
    }
    
    func test_withUncaughtSignalTerminationReason_andZeroTerminationStatus() throws {
        // GIVEN
        process = MockProcess(
            terminationReason: .uncaughtSignal,
            terminationStatus: 0
        )
        
        // WHEN
        result = process.isSuccessfulExit
        
        // THEN
        XCTAssertFalse(result)
    }
    
    func test_withUncaughtSignalTerminationReason_andNonZeroTerminationStatus() throws {
        // GIVEN
        process = MockProcess(
            terminationReason: .uncaughtSignal,
            terminationStatus: 1
        )
        
        // WHEN
        result = process.isSuccessfulExit
        
        // THEN
        XCTAssertFalse(result)
    }

}
#endif
