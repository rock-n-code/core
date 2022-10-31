//
//  ProcessExitable.swift
//  FoundationExtensions
//
//  Created by Javier Cicchelli on 31/10/2022.
//  Copyright © 2022 Röck+Cöde. All rights reserved.
//

#if os(macOS) || targetEnvironment(macCatalyst)
import Foundation

public protocol ProcessExitable {
    
    // MARK: Properties
    
    var terminationStatus: Int32 { get }
    var terminationReason: Process.TerminationReason { get }
    
}

// MARK: - Defaults

public extension ProcessExitable {
    
    // MARK: Computed
    
    var isSuccessfulExit: Bool {
        terminationReason == .exit && terminationStatus == 0
    }

}

#endif
