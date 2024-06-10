//
//  ObserverRegistering.swift
//  SynchronizerProtocols
//
//  Created by Alvin He on 2/6/2024.
//

/// A protocol for objects that manage the registration of observers.
public protocol ObserverRegistering {
    /// The type of observer that can be registered.
    associatedtype Observer

    /// Registers an observer to receive updates.
    /// - Parameter observer: The observer to register.
    func register(observer: Observer)
}
