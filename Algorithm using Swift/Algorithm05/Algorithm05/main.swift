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

var quickArray = [5, 7, 9, 0, 3, 1, 6, 2, 4, 8]

func quickSort(_ array: [Int]) -> [Int] {
    guard let first = array.first, array.count > 1 else { return array }
 
    let pivot = first
    let left = array.filter { $0 < pivot }
    let right = array.filter { $0 > pivot }
    
    return quickSort(left) + [pivot] + quickSort(right)
}

print(quickSort(quickArray))

var countingArray = [5, 5, 7, 7, 7, 8, 8, 1, 2, 3, 5, 3, 5, 6, 7,4, 5, 2]

func countingSort(_ array: [Int]) -> [Int] {
    var array = array
    var countingArray = Array(repeating: 0, count: array.max()! + 1)
    var result = [Int]()
    
    for num in array {
        countingArray[num] += 1
    }
    
    for i in 0..<array.max()! + 1 {
        for j in 0..<countingArray[i] {
            result.append(i)
        }
    }
    print(countingArray)
    
    return result
}

print(countingSort(countingArray))







