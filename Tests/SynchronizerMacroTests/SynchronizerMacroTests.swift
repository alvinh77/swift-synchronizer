//
//  SynchronizerMacroTests.swift
//  SynchronizerMacroTests
//
//  Created by Alvin He on 2/6/2024.
//

import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest

@testable import SynchronizerMacro

final class SynchronizerMacroTests: XCTestCase {
    let testMacros: [String: Macro.Type] = [
        "Synchronizer": SynchronizerMacro.self,
    ]

    func testMacro() throws {
        assertMacroExpansion(
            """
            #Synchronizer<String>("AuthToken")
            """,
            expandedSource: """
            """,
            macros: testMacros
        )
    }
}
