//
//  LandmarksTests.swift
//  LandmarksTests
//
//  Created by Codie Academy on 25.2.24..
//

import XCTest
import Landmarks

final class LandmarksTests: XCTestCase {

    private enum Constants {
        enum FirstLandmark {
            static let name = "Sagrada Familia"
            static let about = "The Basílica i Temple Expiatori de la Sagrada Família, otherwise known as Sagrada Família, is a church under construction in the Eixample district of Barcelona, Catalonia, Spain. It is the largest unfinished Catholic church in the world. Designed by Catalan architect Antoni Gaudí (1852–1926), his work on Sagrada Família is part of a UNESCO World Heritage Site. On 7 November 2010, Pope Benedict XVI consecrated the church and proclaimed it a minor basilica.\n\nOn 19 March 1882, construction of the Sagrada Família began under architect Francisco de Paula del Villar. In 1883, when Villar resigned, Gaudí took over as chief architect, transforming the project with his architectural and engineering style, combining Gothic and curvilinear Art Nouveau forms. Gaudí devoted the remainder of his life to the project, and he is buried in the church's crypt. At the time of his death in 1926, less than a quarter of the project was complete.\n\nRelying solely on private donations, the Sagrada Família's construction progressed slowly and was interrupted by the Spanish Civil War. In July 1936, anarchists from the FAI set fire to the crypt and broke their way into the workshop, partially destroying Gaudí's original plans. In 1939, Francesc de Paula Quintana took over site management, which was able to go on due to the material that was saved from Gaudí's workshop and that was reconstructed from published plans and photographs. Construction resumed to intermittent progress in the 1950s. Advancements in technologies such as computer-aided design and computerised numerical control (CNC) have since enabled faster progress and construction passed the midpoint in 2010. However, some of the project's greatest challenges remain, including the construction of five more spires, each symbolising an important Biblical figure in the New Testament. It was anticipated that the building would be completed by 2026, the centenary of Gaudí's death, but this has now been delayed due to the COVID-19 pandemic. Some aspects of it may only be finished by 2040.\n\nDescribing the Sagrada Família, art critic Rainer Zerbst said \"it is probably impossible to find a church building anything like it in the entire history of art\", and Paul Goldberger describes it as \"the most extraordinary personal interpretation of Gothic architecture since the Middle Ages\". The basilica is not the cathedral church of the Archdiocese of Barcelona, as that title belongs to the Cathedral of the Holy Cross and Saint Eulalia (Barcelona Cathedral)."
            static let imageName = "sagrada_familia"
            static let imageAuthor = "By Maksim Sokolov (maxergon.com) - Own work, CC BY-SA 4.0"
        }
    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLandmarksParsing() throws {
        let landmarks: [Landmark] = load("landmarks.json")

        XCTAssertTrue(landmarks.count == 10)

        if let landmark = landmarks.first {
            XCTAssertTrue(landmark.name == Constants.FirstLandmark.name)
            XCTAssertTrue(landmark.about == Constants.FirstLandmark.about)
            XCTAssertTrue(landmark.imageName == Constants.FirstLandmark.imageName)
            XCTAssertTrue(landmark.imageAuthor == Constants.FirstLandmark.imageAuthor)
        } else {
            XCTFail("Landmarks not parsed properly")
        }
    }
}
