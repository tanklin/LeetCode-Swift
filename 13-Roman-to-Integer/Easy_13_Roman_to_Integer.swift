/*
 *	Question link: https://leetcode.com/problems/roman-to-integer/
 *	Runtime: 308 ms
 */

import UIKit

class Easy_13_Roman_to_Integer {

	func romanToInt(_ s: String) -> Int {
		let romanNumeral = ["I": 1,
		                    "V": 5,
		                    "X": 10,
		                    "L": 50,
		                    "C": 100,
		                    "D": 500,
		                    "M": 1000]

		var sum = 0
		var index = 0

		let rs = s.uppercased().characters



		while index < rs.count {

			let xR = romanNumeral[String(rs[rs.index(rs.startIndex, offsetBy: index)])]!

			if index == rs.count-1 {
				sum += xR
			}
			else {
				let nR = romanNumeral[String(rs[rs.index(rs.startIndex, offsetBy: index+1)])]!

				if xR < nR {
					sum += (nR - xR)
					index += 1
				}
				else {
					sum += xR
				}

			}
			index += 1
		}
		return sum
	}

}
