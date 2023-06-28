import Foundation

func solution(_ n:Int) -> Int {
    var target = n
    var count = 0
    while target != 0 {
        if target % 2 != 0 {
            target -= 1
            count += 1
        }
        target = target / 2
    }
    return count
}
