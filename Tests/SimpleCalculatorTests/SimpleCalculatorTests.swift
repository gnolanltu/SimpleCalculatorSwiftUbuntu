import XCTest
@testable import SimpleCalculator

extension SimpleCalculatorTests {
    static var allTests : [(String, (SimpleCalculatorTests) -> () throws -> Void)] {
        return [
            ("testAddTwoNumbersCheck", testAddTwoNumbersCheck),
            ("testSubTwoNumbersCheck", testSubTwoNumbersCheck),
            ("testMulTwoNumbersCheck", testMulTwoNumbersCheck),            
            ("testDivTwoNumbersCheck", testDivTwoNumbersCheck)
        ]
    }
}
    
class SimpleCalculatorTests: XCTestCase {

  var simpleCalc : SimpleCalculator!
  
  override func setUp() {
    super.setUp()

  }
  
  override func tearDown() {
    simpleCalc = nil
  }
  
  func testAddTwoNumbersCheck() {
    simpleCalc = SimpleCalculator()
    XCTAssertEqual(simpleCalc.add(a:1,b:1),2)
  }

  func testSubTwoNumbersCheck() {
    simpleCalc = SimpleCalculator()
    XCTAssertEqual(simpleCalc.sub(a:3,b:1),2)
  }
    
  func testMulTwoNumbersCheck() {
    simpleCalc = SimpleCalculator()
    XCTAssertEqual(simpleCalc.mul(a:2,b:3),6)
  }

  func testDivTwoNumbersCheck() {
    simpleCalc = SimpleCalculator()
    XCTAssertEqual(simpleCalc.div(a:12,b:2),6)
  }

}