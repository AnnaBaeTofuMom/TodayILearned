//
//  Search03.swift
//  Algorithm04
//
//  Created by 배경원 on 2022/05/19.
//
//백준 dfs, bfs 문제풀이

import Foundation


// dfs
/*
 깊이 우선 탐색
 - 스택을 통해 구현. -> 재귀 함수 사용.
 - 맹목적 탐색 방법의 하나로 탐색 트리의 최근에 첨가된 노드를 선택하고,
 이 노드에 적용 가능한 동작자 중 하나를 적용하여 트리에 다음 수준의 한 개의 자식 노드를 첨가하며,
 첨가된 자식 노드가 목표 노드일 때까지 앞의 자식 노드의 첨가 과정을 반복해 가는 방식.
 */

// https://www.acmicpc.net/problem/1260

// n: 정점 개수, m: 간선 개수, v: 시작 노드 //
//let input_1 = ["4 5 1"]
//let input_2 = ["1 2", "1 3", "1 4", "2 4", "3 4"]


func makeInput(input_2: [String]) -> [Int: [Int]] {
    var graph = [Int: [Int]]()
    
    for edge in input_2 {
        let line = edge.components(separatedBy: " ").map{ Int($0)! }
        let start = line[0]
        let end = line[1]
        
        if graph[start] == nil {
            graph[start] = [end]
        } else {
            graph[start]?.append(end)
        }
        
        if graph[end] == nil {
            graph[end] = [start]
        } else {
            graph[end]?.append(end)
        }
        
    }
    
    
    
    for key in graph.keys {
        graph[key]?.sort(by: >)
    }
    
    print(graph)
    return graph
    
}


//  TODO : 행렬로도 풀어보자.

// dfs
func dfs( graph: [Int :[Int]],  start: Int) -> [Int] {
    var visited = [Int]()
    var stack = [start]
    
    while stack.count != 0 {
        //print("origin stack : \(stack)")
        let node = stack.popLast()!
        //print("this is node : \(node)")
        //print("this is stack : \(stack)")
        
        
        
        if visited.contains(node) {
            //print("\(node) is already contained")
            continue
        } else {
            visited.append(node)
            //print("\(node) is now new in visited")
            
            if let nodeDir = graph[node] {
                stack += nodeDir
                //print("stack is now \(nodeDir)")
            }
        }
    }
    return visited
}

// 1, 2, 4, 3

// bfs
func bfs( graph: [Int :[Int]], _ start: Int) -> [Int] {
    var visited = [Int]()
    var queue = [start]
    
    while queue.count != 0 {
        //print("before queue \(queue)")
        let node = queue.remove(at: 0)
        //print("after queue \(queue)")
        if visited.contains(node) {
            continue
        } else {
            visited.append(node)
            //print("now visited \(node)")
            
            
            if let nodeDir = graph[node] {
                queue += nodeDir
                //print("total queue \(queue)")
                
            }
        }
    }
    return visited
}





