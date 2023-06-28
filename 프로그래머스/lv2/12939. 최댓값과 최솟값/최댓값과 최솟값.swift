func solution(_ s:String) -> String {
    var array = s.split(separator: " ").map { Int($0)! }
    array.sort()
    
    return "\(array.first!) \(array.last!)"
}