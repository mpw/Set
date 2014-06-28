//  Copyright (c) 2014 Rob Rix. All rights reserved.

import XCTest
import Set

class SetTests: XCTestCase {
	func testUnionAddsElementsFromBothOperands() {
		XCTAssert((Set([1, 2, 3, 4]) ∪ Set([3, 4, 5])) == Set([1, 2, 3, 4, 5]))
	}
	
	func testUnionAssignmentModifiesInPlace() {
		var c: Set<Int> = [1, 2, 3]
		c ∪= Set([3, 4, 5])
		
		XCTAssert(c == Set([1, 2, 3, 4, 5]))
	}
}
