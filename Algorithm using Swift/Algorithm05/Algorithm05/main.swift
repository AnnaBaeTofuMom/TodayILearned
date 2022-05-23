//
//  main.swift
//  Algorithm05
//
//  Created by 경원이 on 2022/05/21.
//

import Foundation

//sort 문제풀이를 위한 project

//선택정렬

var array = [7, 5, 9, 0, 3, 1, 6, 2, 4, 8]

for i in 0...array.count - 1 {
    var minIndex = i //가장 작은 원소의 인덱스
    for j in i + 1..<array.count {
        if array[minIndex] > array[j] {
            minIndex = j

        }
    }
    var frontNum = array[i]
    var changeNum = array[minIndex]
    array[i] = changeNum
    array[minIndex] = frontNum
}

print(array)
