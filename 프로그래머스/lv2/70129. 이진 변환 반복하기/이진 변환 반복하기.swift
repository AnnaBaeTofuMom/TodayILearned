import Foundation

func solution(_ s:String) -> [Int] {
    
    var text = s
    var zeros = 0
    var change = 0
    
    while true {
        if text == "1" {
            break
        }
        let cleaned = text.replacingOccurrences(of: "0", with: "")
        text.forEach {
            if String($0) == "0" {
                zeros += 1
            }
        }
        let length = cleaned.count
        let num = String(length, radix: 2)
        text = num
        change += 1
    }
    
    return [change, zeros]
}