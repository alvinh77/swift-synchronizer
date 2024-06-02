//
//  SynchronizerMacro.swift
//  SynchronizerMacro
//
//  Created by Alvin He on 2/6/2024.
//

import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

public struct SynchronizerMacro: DeclarationMacro {
    public static func expansion(
        of node: some FreestandingMacroExpansionSyntax,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        return [
            """
            """
        ]
    }
}

@main
struct SynchronizerMacroPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        SynchronizerMacro.self,
    ]
}
