//
//  Search01.swift
//  Algorithm04
//
//  Created by 배경원 on 2022/05/18.
//149p 음료수 얼려먹기
// N X M 크기의 얼음 틀이 있다.구멍이 뚫려있는 부분은 0, 칸막이가 존재하는 부분은 1로 표시된다.
//구멍이 뚫려있는 부분끼리 상, 하, 좌, 우로 붙어있는 경우 서로 연결되어있는 것으로 간주한다.
//얼음틀의 모양이 주어졌을 때, 생성되는 총 아이스크림의 개수를 구하는 프로그램을 작성하시오.


import Foundation


func solution01(graph: [[Int]], n: Int, m: Int) {
    
    var graph: [[Int]] = graph
    var n: Int = n
    var m: Int = m

    func dfs(x: Int, y: Int) -> Bool {
        
        if x <= -1 || x >= n || y <= -1 || y >= m {
            return false
        }
        
        if graph[x][y] == 0 {
            graph[x][y] = 1
            
            dfs(x: x - 1, y: y)
            dfs(x: x, y: y - 1)
            dfs(x: x + 1, y: y)
            dfs(x: x, y: y + 1)
            return true
            
        }
        
        return false
        
    }

    var result = 0
    
    func answer(N: Int, M: Int) {
        for i in 1...N {
            for j in 1...M {
                if dfs(x: i, y: j) == true {
                    result += 1
                }
            }
        }

        print(result)
        
    }
    
    
}
