import Foundation
import XCTest
import EyesXCUI

class TAUUITestBase: XCTestCase {

    var app = XCUIApplication()
    
    // Initialize the eyes SDK and set your private API key.
    var eyes = Eyes()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
        eyes.apiKey = ""
        
    }

    override func tearDown() {
        super.tearDown()
        app.terminate()
        // End the test.
        do {
            try eyes.close()
        } catch {
            eyes.abortIfNotClosed()
        }
    }
    
    func XCTAsyncAssert(_ element: XCUIElement) {
        let isElementExist = element.waitForExistence(timeout: 10)
        if isElementExist {
            XCTAssertTrue(element.exists)
        }
    }
}
