//
//  CalculatePage.swift
//  xcuitest-sample
//
//  Created by Murat on 25.06.25.
//

import XCTest

class CalculatePage {
    
    let app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
  
    var inputAField: XCUIElement{
        return app.textFields["inputA"]
    }
    
    var inputBField: XCUIElement{
        return app.textFields["inputB"]
    }
    
    var calculateButton: XCUIElement{
        return app.buttons["Calculate"]
    }
    
    
    var sumField: XCUIElement{
        return app.textFields["sum"]
    }
    
    var sumText: XCUIElement {
        return app.staticTexts["summaryText"]
    }
    
    func enterInputA(_ text: String) {
        inputAField.doubleTap()
        inputAField.typeText(text)
    }

    func enterInputB(_ text: String) {
        
        inputBField.doubleTap()
        inputBField.typeText(text)
    }
    
    func calculate(){
        calculateButton.tap()
    }
    
    func getSum() -> String {
        XCTAssertTrue(sumField.waitForExistence(timeout: 5))
        return sumField.value as? String ?? ""
    }
    
    func getSumText() -> String {
        XCTAssertTrue(sumText.waitForExistence(timeout: 5))
        return sumText.label
    }
    
}


// clearAndEnterText kann verwendet werden, wenn der Inhalt aus dem Eingabe Feld nicht gelöscht wurde nach antippen. 
extension XCUIElement {
    func clearAndEnterText(_ text: String) {
        guard self.exists && self.isHittable else { return }

        self.tap()
        self.doubleTap()       // markiert bestehenden Text
        self.typeText(text)    // überschreibt direkt
    }
}

