
var binaryArray = [0, 1, 4, 6, 8, 11, 14, 23, 24, 26, 28, 31, 41, 50]

func recursiveBinary(array: [Int], target: Int, start: Int, end: Int) -> Int? {
    if start > end {
        return nil
    }
    
    var mid = (start + end) / 2
    
    if array[mid] == target {
        return mid
    } else if array[mid] > target {
        return recursiveBinary(array: array, target: target, start: start, end: mid - 1)
        
    } else {
        return recursiveBinary(array: array, target: target, start: mid + 1, end: end)
    }
     
}

var recursiveResult = recursiveBinary(array: binaryArray, target: 11, start: 0, end: binaryArray.count - 1)
print(recursiveResult)


//반복문으로 구현한 이진 탐색 소스코드

func repetitionBinary(array: [Int], target: Int, start: Int, end: Int) -> Int? {
    
    var start = start
    var end = end
    
    
    while start <= end {
        var mid = (start + end) / 2
        
        if array[mid] == target {
            return mid
        } else if array[mid] > target {
            end = mid - 1
        } else {
            start = mid + 1
        }
        
    }
    
    return nil
    
}

var result2 = repetitionBinary(array: binaryArray, target: 4, start: 0, end: binaryArray.count - 1)
print(result2)
