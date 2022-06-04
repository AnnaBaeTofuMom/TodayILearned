//
//  DynamicProgramming01.swift
//  Algorithm07
//
//  Created by 경원이 on 2022/06/04.
//  DP 217p 1로 만들기

import Foundation

/*
 정수 X가 주어질 때, 정수 X에 사용할 수 있는 연산은
 다음과 같이 4가지 이다.
 
 1. X가 5로 나누어 떨어지면 5로 나눈다.
 2. X가 3으로 나누어 떨어지면 3으로 나눈다.
 3. X가 2로 나누어 떨어지면 2로 나눈다.
 4. X에서 1을 뺀다.
 
 정수 X가 주어졌을 때, 연산 4개를 적절히 활용해서 1을 만들려고 한다. 연산을 사용하는 횟수의 최솟값을 출력하시오.
 
 */

func solution01(n: Int) -> Int {
    
    var array = Array(repeating: 0, count: 30001)
    
    
    for i in 2...n + 1 {
        
        array[i] = array[i - 1] + 1
        
        if i % 2 == 0 {
            array[i] = min(array[i], array[i / 2] + 1)
            
        }
        
        if i % 3 == 0 {
            array[i] = min(array[i], array[i / 3] + 1)
            
        }
        
        if i % 5 == 0 {
            array[i] = min(array[i], array[i / 5] + 1)
            
        }
        
    }
    
    return array[n]
    
}
