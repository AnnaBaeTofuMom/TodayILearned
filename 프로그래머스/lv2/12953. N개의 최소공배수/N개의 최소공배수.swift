import Foundation
func GCD(_ min: Int, _ max: Int) -> Int {
  let rem = min % max
  if rem == 0 { // 나머지가 0인 수. 즉, 약수를 의미한다.
      return max
  } else {
    return GCD(max, rem)
  }
}

func LCM(_ a: Int, _ b: Int) -> Int {
  return a * b / GCD(a, b)
}

func solution(_ arr:[Int]) -> Int {
    var lcm = arr[0]
    for i in 0..<arr.count {
        let new = LCM(lcm, arr[i])
        
        if new > lcm {
            lcm = new
        }
    }
    
    return lcm
}