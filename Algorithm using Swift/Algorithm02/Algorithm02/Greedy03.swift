//
//  Greedy03.swift
//  Algorithm02
//
//  Created by 배경원 on 2022/05/09.
//

import Foundation

//96p 예제 3-3 숫자 카드 게임 
//N * M 행렬이 주어질때 매 행의 최저 값을 뽑아내서
// 최저값들 간의 최대값을 도출해 내면 되는 게임

func solution3(metrics: [[Int]]) -> Int {
    
    var array: [Int] = []
    
    for met in metrics {
        array.append(met.min()!)
    }
    
    return array.max()!
    
}
//위 풀이는 배열에 넣어서 확인을 해주는 경우, 순서가 필요할 때 사용

func solution3_1(metrics: [[Int]]) -> Int {
    
    var result: Int = 0
    
    for met in metrics { //[3, 2, 3]
        result = max(result, met.min()!)
    }
    
    return result
    
}


