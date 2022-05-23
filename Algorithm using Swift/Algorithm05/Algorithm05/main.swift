//
//  main.swift
//  Algorithm05
//
//  Created by 경원이 on 2022/05/21.
//

import Foundation

//sort 문제풀이를 위한 project

//선택정렬

var selectionArray = [7, 5, 9, 0, 3, 1, 6, 2, 4, 8]

for i in 0...selectionArray.count - 1 {
    var minIndex = i //가장 작은 원소의 인덱스
    for j in i + 1..<selectionArray.count {
        if selectionArray[minIndex] > selectionArray[j] {
            minIndex = j

        }
    }
    var frontNum = selectionArray[i]
    var changeNum = selectionArray[minIndex]
    selectionArray[i] = changeNum
    selectionArray[minIndex] = frontNum
}

print(selectionArray)

//삽입 정렬

var insertionArray = [7, 5, 9, 0, 3, 1, 6, 2, 4, 8]

for i in 1..<insertionArray.count {
    for j in stride(from: i, to: 0, by: -1) {
        if insertionArray[j] < insertionArray[j - 1] {
            insertionArray.swapAt(j, j - 1)
        } else {
            break
        }
    }
}
print(insertionArray)



