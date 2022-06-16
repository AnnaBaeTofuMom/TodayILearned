//
//  WCommerce02.swift
//  CodingTestQuestions
//
//  Created by 배경원 on 2022/06/16.
//

import Foundation

func solution(_ estimates:[Int], _ k:Int) -> Int {
    var sumArray: [Int] = []
    
    for i in 0...estimates.count - k - 1 {
        let sum = estimates[i...i + k - 1].reduce(0) { $0 + $1 }
        sumArray.append(sum)
    }
    
    return sumArray.max()!
}


func solution22(_ estimates: [Int], _ k: Int) -> Int {
  var answer: [Int] = []

    for i in 0...estimates.count - k {
    var sum = 0
    for j in i..<i + k {
      sum += answer[j]
    }
    answer.append(sum)
  }
  return answer.max()!
}
