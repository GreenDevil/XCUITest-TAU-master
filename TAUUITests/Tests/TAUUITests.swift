//
//  TAUUITests.swift
//  TAUUITests
//
//  Created by Евгений Дульцев on 20.10.2019.
//  Copyright © 2019 Shashikant Jagtap. All rights reserved.
//

import XCTest

class TAUUITests: TAUUITestBase {

    func testAllElementsOfMainScreen() {
        app.staticTexts["welcomeMessage"].tap()
        app.staticTexts["enterCity"].tap()
        app.buttons["enrollButton"].tap()
        app.images["TAUlogo"].tap()
        XCTAssertTrue(app.staticTexts["Please Enter City"].exists)
    }
    
    func testThankYouMessage() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        app.textFields["city"].tap()
        app.textFields["city"].typeText("Moscow")
        app/*@START_MENU_TOKEN@*/.buttons["enrollButton"]/*[[".buttons[\"Enroll\"]",".buttons[\"enrollButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCTAssertTrue(app.staticTexts["Thanks for Joining!"].exists)
    }
    
    
//    func testThankYouMessage() {
//        let app = XCUIApplication()
//        app.launch()
//        app/*@START_MENU_TOKEN@*/.staticTexts["welcomeMessage"]/*[[".staticTexts[\"Welcome to XCUITest Course \"]",".staticTexts[\"welcomeMessage\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//
//    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
