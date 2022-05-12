//
//  Implement03.swift
//  Algorithm03
//
//  Created by 경원이 on 2022/05/12.
//

import Foundation


func solution3(input: String) -> Int {
    //타입을 변환해 줄 필요가 있기 때문에 항상 타입 표기할 것 !!
    let inputArray: [String] = input.map {
        String($0)
    }
    
    let alphabets = ["a": 1, "b": 2, "c": 3, "d": 4, "e": 5, "f": 6, "g": 7, "h": 8]
    let directions = [[-2, -1], [-2, 1], [2, 1], [2, -1], [-1, -2], [1, 2], [-1, 2], [1, -2]]
    
    var x: Int = alphabets[inputArray[0]]!
    var y: Int = Int(inputArray[1])!
    
    var count = 0
    
    for dir in directions {
        
        if x + dir[0] > 0 && x + dir[0] < 9 && y + dir[1] > 0 && y + dir[1] < 9 {
            count += 1
        }
        
    }
    print(count)
    return count
    
}


class 스승의날 {
    
    func 배경원의메시지() {
        print("선생이 되는 것은 쉽지만,")
        print("스승이 되는 것은 어렵다.")
        print("그 어려운걸 해내신")
        print("멘토님들께 감사드립니다.")
    }
}
