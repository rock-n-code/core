//
//  MockProcess.swift
//  FoundationExtensionsTests
//
//  Created by Javier Cicchelli on 31/10/2022.
//  Copyright © 2022 Röck+Cöde. All rights reserved.
//

#if os(macOS) || targetEnvironment(macCatalyst)
import Foundation
import FoundationExtensions

class MockProcess: ProcessExitable {
    
    // MARK: Properties
    
    var terminationReason: Process.TerminationReason
    var terminationStatus: Int32
    
    
    // MARK: Initialisera
    
    init(
        terminationReason: Process.TerminationReason,
        terminationStatus: Int32
    ) {
        self.terminationReason = terminationReason
        self.terminationStatus = terminationStatus
    }
    
}
#endif
