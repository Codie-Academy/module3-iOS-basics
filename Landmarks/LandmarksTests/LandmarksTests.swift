//
//  LandmarksTests.swift
//  LandmarksTests
//
//  Created by Codie Academy on 25.2.24..
//

import XCTest
@testable import Landmarks

final class LandmarksTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLandmarksParsing() throws {
        let landmarks: [Landmark] = Landmarks.load("landmarks.json")

        XCTAssertTrue(landmarks.count == 10)

        if let landmark = landmarks.first {
            XCTAssertTrue(landmark.name == TestingConstants.FirstLandmark.name)
            XCTAssertTrue(landmark.about == TestingConstants.FirstLandmark.about)
            XCTAssertTrue(landmark.imageName == TestingConstants.FirstLandmark.imageName)
            XCTAssertTrue(landmark.imageAuthor == TestingConstants.FirstLandmark.imageAuthor)
        } else {
            XCTFail("Landmarks not parsed properly")
        }
    }
}
