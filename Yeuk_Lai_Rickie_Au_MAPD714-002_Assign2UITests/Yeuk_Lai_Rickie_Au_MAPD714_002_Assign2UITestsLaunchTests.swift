//
//  Yeuk_Lai_Rickie_Au_MAPD714_002_Assign2UITestsLaunchTests.swift
//  Yeuk_Lai_Rickie_Au_MAPD714-002_Assign2UITests
//
//  Created by Rickie Au on 6/10/2024.
//

import XCTest

final class Yeuk_Lai_Rickie_Au_MAPD714_002_Assign2UITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
