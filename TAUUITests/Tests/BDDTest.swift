import Foundation
import XCTest

class BDDTest: TAUUITestBase {
    
    func testThankYouMessageInBDDStyle() {
        givenAppIsReady()
        whenIEnter(city: "Moscow")
        whenIEnrolled()
        thenIShouldSeeThankYouMessage()
    }
}
