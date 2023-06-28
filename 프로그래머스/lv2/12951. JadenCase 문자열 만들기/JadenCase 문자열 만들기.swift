func solution(_ s:String) -> String {
    var array = s.map { String($0) }
    
    var previousCharEmpty = true
    array.enumerated().forEach {
        if $0.element != " " {
            if previousCharEmpty {
                array[$0.offset] = $0.element.uppercased()
                previousCharEmpty = false
            } else {
                array[$0.offset] = $0.element.lowercased()
                previousCharEmpty = false
            }
        } else {
            previousCharEmpty = true
        }
    }
    
    var solution = ""
    array.forEach { solution += $0 }
    return solution
}