//
//  checkout_calculatorTests.swift
//  checkout-calculatorTests
//
//  Created by Azamat Khamidov on 2022-10-21.
//

import XCTest
@testable import checkout_calculator

final class checkout_calculatorTests: XCTestCase {
    
    // sut = System Under Test
    var sut: BagManager!
    let testProduct: Product = productArray[0]

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        try super.setUpWithError()
        sut = BagManager()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
        try super.tearDownWithError()
    }
    
    func testAddToBagFunction() throws {
        // given there is no items in bag
        XCTAssertEqual(sut.products.count, 0, "Number of items in bag doesn't start at 0!")
        
        // if we add one item to the bag
        sut.addToBag(product: testProduct)
        
        
        // then, we should have 1 item in the bag
        XCTAssertEqual(sut.products.count, 1, "Number of items in the bag is wrong!")
    }

    func testRemoveFromBag() throws {
        // given there is one item in bag
        sut.addToBag(product: testProduct)
        XCTAssertEqual(sut.products.count, 1, "Wrong number of items in bag after adding!")
        
        // if we remove that single item from the bag
        sut.removeFromBag(productToRemove: testProduct)
        
        // then, number of items in bag must be zero.
        XCTAssertEqual(sut.products.count, 0, "Wrong number of items in bag after removing")
    }

}
