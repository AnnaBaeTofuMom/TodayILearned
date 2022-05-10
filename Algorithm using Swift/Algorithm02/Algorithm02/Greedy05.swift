//
//  Greedy05.swift
//  Algorithm02
//
//  Created by 배경원 on 2022/05/10.
//

//프로그래머스 탐욕 1번 체육복

import Foundation

func solution5(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var array = Array(repeating: 1, count: n)
    
    for i in reserve {
        array[i - 1] = 2
    }
    
    for i in lost {
        array[i - 1] = 0
    }
    
    print(array)
    
    for i in 0..<array.count {

        if i == 0 {
            if array[i + 1] == 2 {
                array[i] = 1
                array[i + 1] -= 1
            }
        } else if 1 == array.count - 1 {
            if array[i - 1] == 2 {
                array[i - 1] -= 1
                array[i] = 1
            } else if array[i + 1] == 2{
                array[i + 1] -= 1
                array[i] = 1
            }
        } else {
            if array[i - 1] == 2 {
                array[i - 1] -= 1
                array[i] = 1
            }
        }
    }
  
    return array.filter{ $0 >= 1 }.count
}
