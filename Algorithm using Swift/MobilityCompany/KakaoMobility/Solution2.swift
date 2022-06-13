//
//  Solution2.swift
//  KakaoMobility
//
//  Created by Hoo's MacBookPro on 2022/06/13.
//

import Foundation

public func solution (_ A: inout [Int]) -> Int {
  A.sort(by: { $0 < $1 })
  var index = 0
  var roomCount = 0

  while true {
	index = A[index] + index
	roomCount += 1
	if index > A.count - 1 { break }
  }

  return roomCount
}
