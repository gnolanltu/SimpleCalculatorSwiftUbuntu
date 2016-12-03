import XCTest
@testable import SimpleCalculator

extension OtherCalculatorTests {
    static var allTests : [(String, (OtherCalculatorTests) -> () throws -> Void)] {
        return [
            ("testSubWorksWithNegativeResult", testSubWorksWithNegativeResult),
            ("testMulByZeroCheck", testMulByZeroCheck),
            ("testMulNotEqual", testMulNotEqual),
            ("testMulLessThan", testMulLessThan),
            ("testMulGreaterThan", testMulGreaterThan),
            ("testMulParams", testMulParams),
            ("testDivByZeroCheck", testDivByZeroCheck)
        ]
    }
}
    
class OtherCalculatorTests: XCTestCase {

  var otherCalc : SimpleCalculator!
  
  override func setUp() {
    super.setUp()
    otherCalc = SimpleCalculator()
  }
  
  override func tearDown() {
    otherCalc = nil
  }
  
  func testSubWorksWithNegativeResult() {
    XCTAssertEqual(otherCalc.sub(a:1,b:3),-2)
  }
  
  func testMulByZeroCheck() {
    XCTAssertEqual(otherCalc.mul(a:2,b:0),0)
  }

  func testMulNotEqual() {
    XCTAssertNotEqual(otherCalc.mul(a:2,b:2),5)
  }

  func testMulLessThan() {
    XCTAssertLessThan(otherCalc.mul(a:2,b:2),5)
  }

  func testMulGreaterThan() {
    XCTAssertGreaterThan(otherCalc.mul(a:2,b:3),5)
  }
  
  func testMulParams() {
     let cases = [(4,3,12), (2,4,8), (3,5,15), (4,6,24)]
     cases.forEach {
        XCTAssertEqual(otherCalc.mul(a:$0, b:$1), $2)
     }
  }
  
  func testDivByZeroCheck() {
    XCTAssertEqual(otherCalc.div(a:12,b:0),9999)
  }  
  

}