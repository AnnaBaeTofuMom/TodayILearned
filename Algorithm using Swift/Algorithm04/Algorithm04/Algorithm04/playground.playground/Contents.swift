
import Foundation

var graph = [
    [0,0,1,1,0],
    [0,0,0,1,1],
    [1,1,1,1,1],
    [0,0,0,0,0]
]




func solution01(graph: [[Int]], n: Int, m: Int) {
    
    var graph: [[Int]] = graph
    var n: Int = n
    var m: Int = m

    func dfs(x: Int, y: Int) -> Bool {
        
        if x <= -1 || x >= n || y <= -1 || y >= m {
            return false
        }
        
        if graph[x][y] == 0 {
            graph[x][y] == 1
            
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

solution01(graph: graph, n: 4, m: 5)




