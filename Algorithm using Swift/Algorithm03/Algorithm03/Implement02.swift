//
//  Implement02.swift
//  Algorithm03
//
//  Created by 경원이 on 2022/05/12.
//

import Foundation

func solution2(N: Int) {
    
    var count = 0
    var conHours = [3, 13, 23]
    var hourToSeconds = 3600
    var result = 0
    
    for i in 0..<60 {
        
        if String(i).contains("3") {

            count += 60
        } else {
            
            for j in 0..<60 {
                
                if String(j).contains("3") {
                    
                    count += 1
                }
            }
        }
    }
    
    
    for i in 0...N {
        
        if i == 3 || i == 13 || i == 23 {
            
            result += hourToSeconds
        } else {
            
            result += count
        }
    }

    print(result)
}
