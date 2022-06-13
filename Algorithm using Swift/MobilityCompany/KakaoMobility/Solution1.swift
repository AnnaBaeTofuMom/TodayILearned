//
//  Solution1.swift
//  KakaoMobility
//
//  Created by Hoo's MacBookPro on 2022/06/13.
//

import Foundation

public func solution(_ A : inout [Int], _ K : Int) -> Int {

	var even = A.filter { $0 % 2 == 0 }.sorted(by: >)
	var odd = A.filter { $0 % 2 != 0 }.sorted(by: >)
	var K = K
	var mok = K / 3
	var nameoji = K % 3

	var stack: [Int] = []
	var partSum = 0

	if even.count >= 3 && odd.count >= 3 {
		while mok != 0 {
			print("1번연산루프")
			print(partSum)
			let sum1 = even[0] + odd[0] + odd[1]
			let sum2 = even[0] + even[1] + even[2]

			if sum1 > sum2 {
				partSum += sum1
				even.removeFirst()
				odd.removeFirst()
				odd.removeFirst()
			} else if sum2 > sum1 {
				partSum += sum2
				even.removeFirst()
				even.removeFirst()
				even.removeFirst()
			} else {
				partSum += sum1
				even.removeFirst()
				odd.removeFirst()
				odd.removeFirst()
			}
			mok -= 1
		}
	}


	if even.count >= 2 && odd.count >= 2 {
		print("2번연산 루프")
		if nameoji == 1 {
			partSum += even[0]
		} else if nameoji == 2 {
			let evenSum = even[0] + even[1]
			let oddSum = odd[0] + odd[1]

			if evenSum > oddSum {
				partSum += evenSum
			} else {
				partSum += oddSum
			}


		}

		if partSum % 2 == 0 {
			return partSum
		} else {
			return -1
		}
	}
	print(partSum)
	return -1
}

