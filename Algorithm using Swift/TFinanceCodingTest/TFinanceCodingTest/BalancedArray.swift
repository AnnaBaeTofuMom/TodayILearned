//
//  BalancedArray.swift
//  TFinanceCodingTest
//
//  Created by 경원이 on 2022/06/25.
//

import Foundation

/*
 배열이 하나 주어집니다.
 이 배열의 한 원소를 기준으로 왼쪽 원소들의 합과 오른쪽 원소들의 합이 같도록 만들려 합니다.
 기준이 되는 원소의 index를 return 하시오.
 */

// 중앙값 잡고 왼쪽합 오른쪽 합 비교 후 더 큰쪽으로 한칸씩 이동하기?


func balancedSum(arr: [Int]) -> Int {
    let array = arr
    let start = 0
    let end = array.count - 1
    var pivot = (start + end) / 2
    
    while true {
        let leftSum = array[0..<pivot].reduce(0) { $0 + $1 }
        let rightSum = array[pivot + 1...end].reduce(0) { $0 + $1 }
        
        if leftSum == rightSum {
            break
        }
        
        if leftSum > rightSum {
            pivot = pivot - 1
        }
        
        if leftSum < rightSum {
            pivot = pivot + 1
        }
    }
    return pivot
}
