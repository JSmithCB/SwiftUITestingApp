//
//  SwiftUITestingApplicationTests.swift
//  SwiftUITestingApplicationTests
//
//  Created by Josh Smith on 3/15/23.
//

import XCTest
@testable import SwiftUITestingApplication

extension Int {
    func incr() -> Int {
        return self + 1
    }
    
    func square() -> Int {
        return self * self
    }
}

final class SwiftUITestingApplicationTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPipeForward() throws {
        let increment = 2 |> incr
        XCTAssertEqual(increment, 3)
        let value = increment |> square
        XCTAssertEqual(value, 9)
    }
    
    func testCombine() throws {
        let value = 2 |> incr >>> square
        XCTAssertEqual(value, 9)
        XCTAssertNotNil(incr >>> square)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
