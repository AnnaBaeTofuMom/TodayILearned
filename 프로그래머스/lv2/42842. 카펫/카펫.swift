import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {

    var multi: [[Int]] = []
    for i in 1...yellow / 2 + 1 {
        if yellow % i == 0 {
            multi.append([i, yellow / i])
        }
    }
    
    for item in multi {
        if 8 + (item[0] - 1) * 2 + (item[1] - 1) * 2 == brown {
            return [item[0] + 2, item[1] + 2].sorted { $0 > $1 }
        }
    }
    
    return [0, 0]
}

