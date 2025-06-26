//
//  WeitereAnzeigePage.swift
//  xcuitest-sample
//
//  Created by Murat on 26.06.25.
//

import XCTest

class WeitereAnzeigePage{
    
    let app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    var detailTitelText: XCUIElement{
        return app.staticTexts["detailTitle"]
    }
    
    func checkDetailTitelText(){
        XCTAssert(detailTitelText.exists)
        XCTAssert(detailTitelText.label == "Detail")
    }
    
    var pickerDropdown: XCUIElement{
        return app.pickerWheels["auswahlPickerDropdown"]
    }
    
    func selectAuswahl(_ text: String, app: XCUIApplication) {
        let picker = app.buttons["auswahlPicker"]
        
        // Sicherstellen, dass der Picker existiert und antippbar ist
        XCTAssertTrue(picker.waitForExistence(timeout: 5), "Picker nicht gefunden")
        picker.tap()
        
        // Auswahloption antippen
        let option = app.buttons[text]
        XCTAssertTrue(option.waitForExistence(timeout: 5), "Option '\(text)' nicht gefunden")
        option.tap()
    }

    //auswahlPickerDropdown
}
