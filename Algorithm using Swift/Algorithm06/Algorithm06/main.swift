//
//  main.swift
//  Algorithm06
//
//  Created by 경원이 on 2022/05/25.
//  이진탐색(Binary Search)

import Foundation

//재귀 함수로 구현하기
//재귀로 푸는 경우에
//맨 처음에 종료조건을 확인하는 습관을 들이자!

var binaryArray = [0, 1, 4, 6, 8, 11, 14, 23, 24, 26, 28, 31, 41, 50]

func recursiveBinary(array: [Int], target: Int, start: Int, end: Int) -> Int? {
    if start > end {
        return nil
    }
    
    var mid = (start + end) / 2
    
    if array[mid] == target {
        return mid
    } else if array[mid] > target {
        return recursiveBinary(array: array, target: target, start: start, end: mid - 1)
        
    } else {
        return recursiveBinary(array: array, target: target, start: mid + 1, end: end)
    }
     
}

var recursiveResult = recursiveBinary(array: binaryArray, target: 11, start: 0, end: binaryArray.count - 1)
print(recursiveResult)


//반복문으로 구현한 이진 탐색 소스코드

func repetitionBinary(array: [Int], target: Int, start: Int, end: Int) -> Int? {
    
    var start = start
    var end = end
    
    
    while start <= end {
        var mid = (start + end) / 2
        
        if array[mid] == target {
            return mid
        } else if array[mid] > target {
            end = mid - 1
        } else {
            start = mid + 1
        }
        
    }
    
    return nil
    
}

var result2 = repetitionBinary(array: binaryArray, target: 4, start: 0, end: binaryArray.count - 1)
print(result2)


var array = ["똥개", "멍청이", "해삼", "고구마", "사이다"] //타입이 같은 아이템만 넣을 수 있어요.

array[0] // "똥개"
array[1] // "멍청이"

array.remove(at: 0)

print(array)

let parts = [8, 3, 7, 9, 2]
let sortedParts = parts.sorted()

let require = [1, 3, 7, 9]

solution01(array: sortedParts, require: require)

var height = tteokBinary(tteokHeight: [15, 15, 16, 13], target: 11)
print(height)
