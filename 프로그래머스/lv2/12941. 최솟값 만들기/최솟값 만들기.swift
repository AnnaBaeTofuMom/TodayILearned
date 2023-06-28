import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var ans = 0
    var aArray = A.sorted { $0 > $1 }
    var bArray = B.sorted()
    
    for i in 0..<aArray.count {
        let multiple = aArray[i] * bArray[i]
        ans += multiple
    }

    return ans
}
