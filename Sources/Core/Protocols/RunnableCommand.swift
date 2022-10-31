//
//  RunnableCommand.swift
//  RockNCodeCore
//
//  Created by Javier Cicchelli on 31/10/2022.
//  Copyright © 2022 Röck+Cöde. All rights reserved.
//

#if os(macOS) || targetEnvironment(macCatalyst)
import Foundation

public protocol RunnableCommand {
    
    // MARK: Functions
    
    @discardableResult
    func callAsFunction(
        pathToCommand: String,
        arguments: [String]?
    ) throws -> Data?
    
}
#endif
