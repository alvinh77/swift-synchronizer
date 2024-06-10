//
//  Observing.swift
//  SynchronizerProtocols
//
//  Created by Alvin He on 2/6/2024.
//

/// A protocol for objects that observe changes in a model.
public protocol Observing: AnyObject {
    /// The type of the model that the observer is interested in.
    associatedtype Model

    /// Called when the model is updated.
    /// - Parameter model: The updated model.
    func didUpdate(model: Model)
}
