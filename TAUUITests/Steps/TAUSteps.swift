import Foundation
import XCTest

extension TAUUITestBase {
        
    func givenAppIsReady() {
        XCTContext.runActivity(named: "Приложение готово к использованию") { _ in
            XCTAssertTrue(TAUScreen.enrollButton.element.exists)
        }
    }
    
    func whenIEnter(city: String) {
        XCTContext.runActivity(named: "Когда вводится город  \(city)") { _ in
            TAUScreen.cityTextField.element.tap()
            TAUScreen.cityTextField.element.typeText(city)
        }
    }
    
    func whenIEnrolled() {
        XCTContext.runActivity(named: "Когда происходит нажатие на кнопку Enroll") { _ in
            TAUScreen.enrollButton.element.tap()
        }
    }
    
    func thenIShouldSeeThankYouMessage() {
        XCTContext.runActivity(named: "Показывается сообщение с благодарностью за присоединение") { _ in
            XCTAsyncAssert(TAUScreen.thankYouMessage.element)
        }
    }
}
