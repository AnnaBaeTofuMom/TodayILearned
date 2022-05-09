//
//  Greedy01.swift
//  Algorithm02
//
//  Created by 배경원 on 2022/05/09.
//

import Foundation

//87p 예제 3-1 거스름돈 

//당신은 거스름돈으로 사용할 500원, 100원, 50원, 10원짜리 동전이 무한히 존재한다.
//손님에게 거슬러줘야 할 돈이 N원일때 거슬러줘야 할 최소 동전의 개수를 구하라.

//5320원 1240원 770원



func solution(number: Int) -> Int {
    
    let coins : [Int] = [500, 100, 50, 10]
    
    var count: Int = 0
    var nextN: Int = number
    
    for coin in coins {
        count = count + nextN / coin
        nextN = nextN % coin
    }
//    count = count + N / 500
//    nextN = N % 500
//    count = count + nextN / 100
//    nextN = nextN % 100
//    count = count + nextN / 50
//    nextN = nextN % 50
//    count = count + nextN / 10

    return count
    
}



