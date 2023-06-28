import Foundation

func solution(_ n:Int) -> Int {
    var num = n
    let binaryNum = String(num, radix: 2)
    var oneCount = 0
    binaryNum.forEach {
        if String($0) == "1" {
            oneCount += 1
        }
    }
    
    while true {
        num += 1
        let newBinary = String(num, radix: 2)
        var newCount = 0
        
        newBinary.forEach {
            if String($0) == "1" {
                newCount += 1
            }
        }
        
        if oneCount == newCount {
            return num
        }
    }
}