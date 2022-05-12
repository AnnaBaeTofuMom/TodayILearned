//
//  Implement01.swift
//  Algorithm03
//
//  Created by 경원이 on 2022/05/12.
//

import Foundation

//110p 구현 4-1 상하좌우 문제
// 입력값 N이 주어지고 두번째 줄에 이동 계획서가 주어진다
// L, R, U, D (왼, 오, 위, 아래) 로 몇번 이동할지가 주어짐
// 이동할 수 없으면 이동하지 않음
//최종적으로 이동한 곳의 좌표를 출력하시오.


func solution1(n: Int , plan: [String]) {
    
    let direction = ["L", "R", "U", "D"]
    
    let dx = [0, 0, -1, 1]
    
    let dy = [-1, 1, 0, 0]
    
    var point = [1, 1]
    
   
    
    for pla in plan {
        
        var newPoint = point
        
        for i in 0..<direction.count {
            
            if pla == direction[i] {
                
                newPoint[0] += dx[i]
                
                newPoint[1] += dy[i]
            }
        }
        
        if newPoint[0] < 1 || newPoint[0] > n || newPoint[1] < 1 || newPoint[1] > n {
            continue
        }
        
        point[0] = newPoint[0]
        point[1] = newPoint[1]
        
    }
    
    print(point)
    
    
    //아래는 처음 푼 방식
//    for pla in plan {
//        if pla == "L" {
//            if start[1] >= 2 && start[1] <= n {
//                start[1] -= 1
//            }
//        }
//
//        if pla == "R" {
//            if start[1] <= n - 1 {
//                start[1] += 1
//            }
//        }
//
//        if pla == "U" {
//            if start[0] >= 2 && start[0] <= n {
//                start[0] -= 1
//            }
//        }
//
//        if pla == "D" {
//            if start[0] <= n - 1 {
//                start[0] += 1
//            }
//        }
//
//    }
//
   
    
}




