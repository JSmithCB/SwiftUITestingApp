//
//  Operator+Extensions.swift
//  SwiftUITestingApplication
//
//  Created by Josh Smith on 3/15/23.
//

import Foundation

// MARK: - Pipe Forward Operator
precedencegroup ForwardApplication {
    associativity: left
}

infix operator |>: ForwardApplication

/// Pipe Forward
public func |> <A, B>(a: A, f: (A) -> B) -> B {
    return f(a)
}

// MARK: - Combine Operator
precedencegroup ForwardComposition {
    associativity: left
    higherThan: ForwardApplication
}

infix operator >>>: ForwardComposition

/// Combine
public func >>> <A, B, C>(f: @escaping (A) -> B, g: @escaping (B) -> C) -> ((A) -> C) {
    return { a in
        g(f(a))
    }
}
