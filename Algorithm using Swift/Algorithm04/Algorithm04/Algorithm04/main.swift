//
//  main.swift
//  Algorithm04
//
//  Created by 경원이 on 2022/05/16.
//

import Foundation
//
//print("Hello, World!")
////
//var graph = [
//    [0,0,1,1,0],
//    [0,0,0,1,1],
//    [1,1,1,1,1],
//    [0,0,0,0,0]
//]
//
//solution01(graph: graph, n: 4, m: 5)
//

//let input_1 = ["4 5 1"]
//let input_2 = ["1 2", "1 3", "1 4", "2 4", "3 4"]
//
//
//var graph = [Int: [Int]]()
//graph = makeInput(input_2: input_2)
//
//print(dfs(graph: graph, start: 1)) // 1, 2, 4, 3
//print(bfs(graph: graph, 1)) // 1, 2, 3, 4

var graph = [
    [1, 0, 1, 0, 1, 0],
    [1, 1, 1, 1, 1, 1],
    [0, 0, 0, 0, 0, 1],
    [1, 1, 1, 1, 1, 1],
    [1, 1, 1, 1, 1, 1]
]

solution02(graph: graph, N: 5, M: 6)
