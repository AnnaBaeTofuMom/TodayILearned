import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
{
    var A = a
    var B = b
    var battleCount = 0
    
    while true {
        battleCount += 1
        if A % 2 == 0 {
            A = A / 2
        } else {
            A = (A + 1) / 2
        }
        
        if B % 2 == 0 {
            B = B / 2
        } else {
            B = (B + 1) / 2
        }
        
        if A == B {
           return battleCount
        }
    }
}
