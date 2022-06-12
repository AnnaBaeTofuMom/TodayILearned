//
//  TworXChallenge3.swift
//  CodingTestQuestions
//
//  Created by 배경원 on 2022/06/12.
//


import Foundation

func solution03(_ n:Int, _ plans:[String], _ clients:[String]) -> [Int] {
    var plans = plans.map { $0.components(separatedBy: " ") } //이중배열화
    var n = n //부가서비스의 수
    var clients = clients.map { $0.components(separatedBy: " ") }
    var clientsPlan = Array(repeating: "x", count: clients.count)
    
    for i in 0..<clients.count {
        let cData = clients[i][0]
        clients[i].remove(at: 0)
        let cAdd = Set(clients[i])
        var pAdd: Set<String> = []
        
        for j in 0..<plans.count {
            let pData = plans[j][0]
            plans[j][1..<plans[j].count].map { pAdd.insert($0)}

            if Int(cData)! <= Int(pData)! && pAdd.isSuperset(of: cAdd) {
                clientsPlan[i] = "\(j + 1)"
                break
            } else {
                clientsPlan[i] = "0"
            }
        }
    }
    
    return clientsPlan.map { Int($0)! }
}


