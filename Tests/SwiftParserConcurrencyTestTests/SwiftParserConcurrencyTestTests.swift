import XCTest
@testable import SwiftParserConcurrencyTest

final class SwiftParserConcurrencyTestTests: XCTestCase {
    func testConcurrency() async throws {
        let url = URL(string: "file:///Users/umar/Downloads/SportsCal-main")!
        let allSymbols = FileManager.default
            .enumerator(at: url, includingPropertiesForKeys: nil)?
            .compactMap { $0 as? URL }
            .filter { $0.hasDirectoryPath == false }
            .filter { $0.pathExtension == "swift" }
        print(allSymbols?.count)
        let manager = ParserManager()
        let combined: String = allSymbols!
            .compactMap({ file in
                try? String(contentsOf: file)
            })
            .reduce("", +)
        try await manager.parseString(string: combined)
    }
}
