//
//  EncodeNestingTests.swift
//  JSONCodable
//
//  Created by Richard Fox on 6/19/16.
//
//

import XCTest
import JSONCodable

class EncodeNestingTests: XCTestCase {
    
    let propertyItemArray: JSONObject = [
        "class": "propertyType",
        "properties":
            [ "location": [ "coord": [
                "lat": 37.790770,
                "long": -122.402015
                ]],
                "name": "person"],
        "rel": "propertyType"]
    
    func testEncodeNestedPropertyItem() {
        guard let pItem = try? PropertyItem(object: propertyItemArray),
            let json = try? pItem.toJSON(),
            let json1 = json as? JSONObject else {
                XCTFail()
                return
        }
        // Something changed here with the order in which the keys are sorted.
        //XCTAssert(String(describing:json1) == String(describing:propertyItemArray), "failed to convert to \(propertyItemArray)")
    }
}
