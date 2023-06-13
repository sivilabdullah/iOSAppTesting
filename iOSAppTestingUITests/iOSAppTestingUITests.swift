//
//  iOSAppTestingUITests.swift
//  iOSAppTestingUITests
//
//  Created by abdullah's Ventura on 13.06.2023.
//

import XCTest
final class iOSAppTestingUITests: XCTestCase {


    func testExample() throws {
             
        let app = XCUIApplication()
        app.launch()
        
       
       
        let addBtn =  app.navigationBars["iOSAppTesting.View"].buttons["Add"]
        let elementsQuery = app.alerts["Add Item"].scrollViews.otherElements
        let textField = elementsQuery.collectionViews/*@START_MENU_TOKEN@*/.textFields["enter your task"]/*[[".cells.textFields[\"enter your task\"]",".textFields[\"enter your task\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        let okBtn = elementsQuery.buttons["OK"]
        let addedCell = app.tables.cells.containing(.staticText, identifier: "Hello World").element
       
       
      
        addBtn.tap()
        textField.tap()
        textField.typeText("Hello World")
        okBtn.tap()
        XCTAssertTrue(addedCell.exists)
        
        //delete
        let tablesQuery = app.tables
        addedCell.swipeLeft(velocity: .fast)
        tablesQuery.buttons["Delete"].tap()
        XCTAssertFalse(addedCell.exists)
    }
   
}
