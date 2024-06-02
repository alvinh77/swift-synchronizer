//
//  Notifying.swift
//  SynchronizerProtocols
//
//  Created by Alvin He on 2/6/2024.
//

/// A protocol for objects that notify observers about model changes.
/// - Note: Classes conforming to this protocol should implement the `sync(sender:model:)` method to synchronize model changes with observers.
public protocol Notifying {
    /// The type of the model that the notifier will update.
    associatedtype Model

    /// Synchronizes the model change with observers.
    /// - Parameters:
    ///   - sender: The object that is sending the update.
    ///   - model: The updated model to be synchronized.
    func sync(sender: AnyObject, model: Model)
}
