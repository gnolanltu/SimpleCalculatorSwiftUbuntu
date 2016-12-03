import XCTest
@testable import SimpleCalculatorTests

XCTMain([
    testCase(SimpleCalculatorTests.allTests),
    testCase(OtherCalculatorTests.allTests)
])
