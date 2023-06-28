import Foundation


func solution(_ s:String) -> Int{
    var resultArray: [Character] = []
    
    for char in s {
        guard let last = resultArray.last else {
            resultArray.append(char)
            continue
        }
        
        if last == char {
            resultArray.popLast()
        } else {
            resultArray.append(char)
        }
    }
    
    return resultArray.count == 0 ? 1 : 0
}

