//
//  Greedy06.swift
//  Algorithm02
//
//  Created by 배경원 on 2022/05/10.
//

//프로그래머스 탐욕 3번 큰 수 만들기

import Foundation

func solution6(_ number:String, _ k:Int) -> String {
    var array = Array(number)
    var maxNum: Character = "0"
    var minNum: Character = "9"
    var minIndex: Int = 0
    var leftDelete: Int = k
    var resultArray = array
    
    //1. 가장 크고 인덱스가 작은 아이 찾기
    for num in array {
        if maxNum < num {
            maxNum = num
        }
    }
    
    print(resultArray)
    
    //2. 가장 큰 숫자를 만날때까지 원소 지우기, 단 여분의 leftDelete가 있을때, 없으면 안지움
    for i in 0..<array.count {
        if array[i] != maxNum {
            if leftDelete >= 1 {
                resultArray[i] = "똥"
                leftDelete -= 1
                
            }
            
            print(resultArray)
        }
        
    }
    
    print("2번")
    print(resultArray)
    print("남은 삭제 숫자 \(leftDelete)게")
    
    array = resultArray
    
    //3. 최대 숫자만 남은 배열에서 최소 숫자를 leftDelete 마다 삭제
    
    if leftDelete != 0 {
        for i in 0...leftDelete - 1 {
            print("3")
            for i in 0..<array.count {
                if array[i] < minNum {
                    minNum = array[i]
                    minIndex = i
                }
            }
            
            resultArray.remove(at: minIndex)
        }
        print("다 빼고 정답")
        print(resultArray)
        
        
    } else {
        print("이대로 정답")
        print(resultArray)
    }
    
    
    
    
    return "리턴"
}
