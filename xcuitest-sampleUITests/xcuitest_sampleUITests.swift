//
//  xcuitest_sampleUITests.swift
//  xcuitest-sampleUITests
//
//  Created by Soner Ceremesiz on 12/11/2021.
//

import XCTest

class xcuitest_sampleUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let inputA = app.textFields["inputA"]
        inputA.doubleTap()
        inputA.typeText("110")
        
        let inputB = app.textFields["inputB"]
        inputB.doubleTap()
        inputB.typeText("20")
        
        app.buttons["calculate"].tap()
        
        let sum = app.textFields["sum"]
        XCTAssertEqual(sum.value as! String, "30")
    }

}
