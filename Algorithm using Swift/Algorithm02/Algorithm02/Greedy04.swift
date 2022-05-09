//
//  Greedy04.swift
//  Algorithm02
//
//  Created by 배경원 on 2022/05/09.
//

import Foundation

//99p 예제 3-4 1이 될 때까지
//N이 1이리 될때까지 두 과정중 하나만 반복적으로 선택하여 수행하려고 한다. 두번째 연산은 N이 K로 나누어 떨어질 때 만 선택할 수 있다.
// 1. N에서 1을 뺀다
// 2. N을 K로 나눈다.

func solution4(number: Int, divide: Int) -> Int {
    //[25, 5]
    var count = 0
    var object = number
    
    while object != 1 {
        if object % divide == 0 { //N이 K로 나누어 떨어지면
            object = object / divide //N을 K로 나눈값을 N으로 지정
        } else {
            object -= 1 //N이 K로 나누어 떨어지지 않으면 N-1
        }
        
        count += 1 // if문 내에서 연산을 1번 마치도록 되어있으므로 무조건 카운트는 1번 올려줌
        
        if object == 1 { // 다음 if문 돌기 전에 N이 1상태이면 멈춤
            break
        }
    }
    
    return count
}
