//
//  Greedy02.swift
//  Algorithm02
//
//  Created by 배경원 on 2022/05/09.
//


import Foundation

//92p 예제 3-2 큰 수의 법칙
//N M K 를 입력 받는다.
//N 은 배열의 갯수. M은 더할 횟수, K는 각 숫자의 최대 반복 가능 횟수이다.

// 입력예제
// 5 8 3
// 2 4 5 4 6

//let input = readLine()?.components(separatedBy: " ").map{ Int($0)! }
//let input2 = readLine()?.components(separatedBy: " ").map{ Int($0)! }

func solution02(options: [Int], numbers: [Int]) -> Int {
    
    let arr = numbers.sorted { lhs, rhs in
        lhs > rhs
    }
    // let arr = numbers.sorted(by: >)
//    let n = options[0]
    let m = options[1]
    let k = options[2]
    
    var repeatCount: Int = 0
    var result: Int = 0
    let firstInt: Int = arr[0]
    let secondInt: Int = arr[1]
    
    for _ in 0..<m { //나는 m에 게속 접근해야 하는 방식인데, 0이 아닐때로 (불변값으로) 해주면 연산이 좀더 줄어든다.
        if repeatCount < k {
            result = result + firstInt //매번 어레이에 접근하는것보다 차라리 arr.popLast() 로 상수에 할당하는게 더 효율이 좋겠다.
            repeatCount += 1
            
        } else {
            result = result + secondInt
            repeatCount = 0
            
        }
    }
    
    return result
    
}
