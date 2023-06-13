//
//  iOSAppTestingTests.swift
//  iOSAppTestingTests
//
//  Created by abdullah's Ventura on 13.06.2023.
//

import XCTest
@testable import iOSAppTesting

final class iOSAppTestingTests: XCTestCase {
//test baslamadan yapilacak testler
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    //test bittikten sonra yapilacak testler
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
//testler
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
//performans testleri
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
   //Testlerim
    
    let math = MathFunc()
    func testAddIntegerFunc(){
        let result = math.addIntegers(x: 10, y: 5)
        XCTAssertEqual(result, 15)
    }
    func testMinusIntegerFunc(){
        let result = math.minusIntegers(x: 10, y: 5)
        XCTAssertEqual(result, 5)
    }
    func testMultiplyIntegerFunc(){
        let result = math.MultiplyIntegers(x: 10, y: 5)
        XCTAssertEqual(result, 50)
    }

}
