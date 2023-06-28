import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var dict: [String: Int] = [:]
    var countDict: [Int] = Array(repeating: 0, count: n)
    
    for i in 0..<words.count {
        let index = i % n // 끝말잇기 하는 사람의 인덱스
        countDict[index] += 1
        
        if i == 0 {
            dict[words[i]] = 1
            continue
        }
        
        if words[i].count == 1 {
            return [index + 1, countDict[index]]
        }
        
        // 새로운 단어이고
        if dict[words[i]] == nil {
            // 끝말이 잘 이어졌다면
            if words[i - 1].last == words[i].first {
                // 단어를 등록해준다
                dict[words[i]] = 1
                continue
            } else {
                // 끝말이 안 맞는 단어이면
                return [index + 1, countDict[index]]
            }
        } else {
            // 이미 있는 단어이고
            return [index + 1, countDict[index]]
        }
    }
    return [0,0]
}