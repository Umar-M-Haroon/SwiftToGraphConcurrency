import Foundation
import SwiftSyntax
import SwiftSyntaxParser
import Collections

public actor ParserManager {
    public init() {
        
    }
    public func parseString(string: String) async throws {
        let parser = SwiftParser()
        try await parser.parse(source: string)
    }
}

public class SwiftParser: SyntaxVisitor {
    public override init() {
    }
    
    public func parse(source: String) async throws {
        walk(try SyntaxParser.parse(source: source))
        //        convertTreeToGraph(branch: root)
        //        removeSystemFunctions()
    }
    
    /// Visiting `ClassDeclSyntax` specifically.
    ///   - Parameter node: the node we are visiting.
    ///   - Returns: how should we continue visiting.
    open override func visit(_ node: ClassDeclSyntax) -> SyntaxVisitorContinueKind {
        //        let new = Branch(parserNode: ParserNode(name: node.identifier.text, type: node.self))
        //        current.addChild(new)
        //        current = new
        return .visitChildren
    }
    
    /// The function called after visiting `ClassDeclSyntax` and its descendents.
    ///   - node: the node we just finished visiting.
    open override func visitPost(_ node: ClassDeclSyntax) {
        //        current = current.parent ?? current
    }
    /// Visiting `StructDeclSyntax` specifically.
    ///   - Parameter node: the node we are visiting.
    ///   - Returns: how should we continue visiting.
    open override func visit(_ node: StructDeclSyntax) -> SyntaxVisitorContinueKind {
        //        let node = Branch(parserNode: ParserNode(name: node.identifier.text, type: node.self))
        //        current.addChild(node)
        //        current = node
        return .visitChildren
    }
    
    /// The function called after visiting `StructDeclSyntax` and its descendents.
    ///   - node: the node we just finished visiting.
    open override func visitPost(_ node: StructDeclSyntax) {
    }
    /// Visiting `ProtocolDeclSyntax` specifically.
    ///   - Parameter node: the node we are visiting.
    ///   - Returns: how should we continue visiting.
    open override func visit(_ node: ProtocolDeclSyntax) -> SyntaxVisitorContinueKind {
        return .visitChildren
    }
    
    /// The function called after visiting `ProtocolDeclSyntax` and its descendents.
    ///   - node: the node we just finished visiting.
    open override func visitPost(_ node: ProtocolDeclSyntax) {
    }
    /// Visiting `ExtensionDeclSyntax` specifically.
    ///   - Parameter node: the node we are visiting.
    ///   - Returns: how should we continue visiting.
    open override func visit(_ node: ExtensionDeclSyntax) -> SyntaxVisitorContinueKind {
        return .visitChildren
    }
    
    /// The function called after visiting `ExtensionDeclSyntax` and its descendents.
    ///   - node: the node we just finished visiting.
    open override func visitPost(_ node: ExtensionDeclSyntax) {
    }
    // Visiting `ExtensionDeclSyntax` specifically.
    ///   - Parameter node: the node we are visiting.
    ///   - Returns: how should we continue visiting.
    open override func visit(_ node: FunctionDeclSyntax) -> SyntaxVisitorContinueKind {
        //        let node = Branch(parserNode: ParserNode(name: node.identifier.text, type: node.self))
        //        current.addChild(node)
        //        current = node
        return .visitChildren
    }
    /// The function called after visiting `FunctionDeclSyntax` and its descendents.
    ///   - node: the node we just finished visiting.
    open override func visitPost(_ node: FunctionDeclSyntax) {
        //        if current.parent?.parserNode != nil {
        //            current = current.parent ?? current
        //        }
    }
    /// Visiting `InitializerDeclSyntax` specifically.
    ///   - Parameter node: the node we are visiting.
    ///   - Returns: how should we continue visiting.
    open override func visit(_ node: InitializerDeclSyntax) -> SyntaxVisitorContinueKind {
        return .visitChildren
    }
    
    /// The function called after visiting `InitializerDeclSyntax` and its descendents.
    ///   - node: the node we just finished visiting.
    open override func visitPost(_ node: InitializerDeclSyntax) {}
    /// Visiting `DeinitializerDeclSyntax` specifically.
    ///   - Parameter node: the node we are visiting.
    ///   - Returns: how should we continue visiting.
    open override func visit(_ node: DeinitializerDeclSyntax) -> SyntaxVisitorContinueKind {
        return .visitChildren
    }
    
    /// The function called after visiting `DeinitializerDeclSyntax` and its descendents.
    ///   - node: the node we just finished visiting.
    open override func visitPost(_ node: DeinitializerDeclSyntax) {}
    /// Visiting `SubscriptDeclSyntax` specifically.
    ///   - Parameter node: the node we are visiting.
    ///   - Returns: how should we continue visiting.
    
    
    open override func visit(_ node: EnumDeclSyntax) -> SyntaxVisitorContinueKind {
        return .visitChildren
    }
    
    /// The function called after visiting `EnumDeclSyntax` and its descendents.
    ///   - node: the node we just finished visiting.
    open override func visitPost(_ node: EnumDeclSyntax) {}
    
    /// Visiting `FunctionCallExprSyntax` specifically.
    ///   - Parameter node: the node we are visiting.
    ///   - Returns: how should we continue visiting.
    open override func visit(_ node: FunctionCallExprSyntax) -> SyntaxVisitorContinueKind {
        return .visitChildren
    }
    
    /// The function called after visiting `FunctionCallExprSyntax` and its descendents.
    ///   - node: the node we just finished visiting.
    open override func visitPost(_ node: FunctionCallExprSyntax) {
    }
}
