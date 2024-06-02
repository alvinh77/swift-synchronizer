//
//  Observing.swift
//  SynchronizerProtocols
//
//  Created by Alvin He on 2/6/2024.
//

/// A protocol for objects that observe changes in a model.
/// - Note: Classes conforming to this protocol should implement the `didUpdate(model:)` method to handle model updates.
public protocol Observing: AnyObject {
    /// The type of the model that the observer is interested in.
    associatedtype Model

    /// Called when the model is updated.
    /// - Parameter model: The updated model.
    func didUpdate(model: Model)
}
