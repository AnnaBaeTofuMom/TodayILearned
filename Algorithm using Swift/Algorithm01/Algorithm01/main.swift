//
//  main.swift
//  Algorithm01
//
//  Created by dev on 2022/04/28.
//

import Foundation

var input1 = readLine()?.components(separatedBy: " ") //띄어쓰기로 구분된 입력값 받아와 String 배열로 반환
var input2 = readLine()?.split(separator: " ") // 띄어쓰기로 구분된 입력값 Substring 의 배열로 반환

//시퀀스 어레이 만들기

var sequence = Array(1...3) // [1, 2, 3]

let zeroArray1 = [Int](repeating: 0, count: 10) // [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
 
let zeroArray2 = Array(repeating: 0, count: 10) // [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

//배열의 원소 세기

let arrayCount = sequence.count

zeroArray1.isEmpty // 비어있는지 여부를 확인 -> Bool

//배열의 첫번째 인자, 마지막 인자를 변수에 저장 및 원본에서 삭제

let firstElement = sequence.remove(at: 0)
let lastElement = sequence.popLast()

//배열의 첫번째 인자, 마지막 인자를 가져오며 원본은 변형하지 않음

sequence.first
sequence.last

