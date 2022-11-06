//
//  ProcessExitable.swift
//  FoundationExtensions
//
//  Created by Javier Cicchelli on 31/10/2022.
//  Copyright © 2022 Röck+Cöde. All rights reserved.
//

#if os(macOS) || targetEnvironment(macCatalyst)
import Foundation

/// A protocol that allows to determine whether a process finished successfully.
public protocol ProcessExitable {
    
    // MARK: Properties
    
    /// An Integer value representing the termination status of a process.
    var terminationStatus: Int32 { get }
    
    /// An enumeration value representing the termination reason of a process.
    var terminationReason: Process.TerminationReason { get }
    
}

// MARK: - Defaults

public extension ProcessExitable {
    
    // MARK: Computed
    
    /// A Boolean value indicating whether a process finished successfully.
    var isSuccessfulExit: Bool {
        terminationReason == .exit && terminationStatus == 0
    }

}

#endif
