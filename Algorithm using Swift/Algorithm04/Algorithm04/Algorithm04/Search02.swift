//
//  Search02.swift
//  Algorithm04
//
//  Created by 배경원 on 2022/05/19.
//


//N X M 정사각형 미로가 있고, 1은 길이고, 0은 괴물이다. 탈출하기 위해 움직여야 하는 최단거리를 구하시오.
//시작은 (1,1)에서 시작하고 출구가 없는 경우는 주어지지 않는다.
import Foundation

func solution02(graph: [[Int]], n: Int, m: Int) {
    
    let dx = [0, 0, -1, 1]
    let dy = [-1, 1, 0, 0]
    
    var graph = graph
    var queue: [[Int]] = [[0, 0]]
    var visited: [[Int]] = []
    
    while queue.count != 0 {
        
        let node = queue.remove(at: 0) //queue의 첫번째 인자 가져와서 차례로 보자
        
        if !visited.contains(node) {
            visited.append(node)
            
            for i in 0..<4 {
                let newX = node[0] - dx[i]
                let newY = node[1] - dy[i]
                
                if 0 > newX || n - 1 < newX || 0 > newY || m - 1 < newY {
                    continue
                }
                
                if graph[newX][newY] == 0 {
                    continue
                }
                
                if graph[newX][newY] == 1 {
                    queue.append([newX, newY])
                    graph[newX][newY] = graph[node[0]][node[1]] + 1
                }
            }
        }
    }
    
    print(graph[n - 1][m - 1])
}
