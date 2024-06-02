//
//  Synchronizer.swift
//  Synchronizer
//
//  Created by Alvin He on 2/6/2024.
//

@freestanding(declaration)
public macro Synchronizer<T>(_ prefix: String) = #externalMacro(module: "SynchronizerMacro", type: "SynchronizerMacro")
