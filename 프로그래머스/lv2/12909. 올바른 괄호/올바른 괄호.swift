import Foundation

func solution(_ s:String) -> Bool {
    var ans:Bool = true
    var opened = 0
    
    for char in s {
        if char == "(" {
            opened += 1
        } else {
            if opened == 0 {
                ans = false
                break
            }
            
            opened -= 1
        }
    }
    
    if opened > 0 {
        ans = false
    }

    return ans
}
