
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


### 트리 자료구조

트리 자료구조의 특징 
1. 트리는 부모 노드와 자식 노드의 관계로 표현된다. 
2. 트리의 최상단 노드를 루트 노드라고 한다. 
3. 트리의 최하단 노드를 단말 노드라고 한다. 
4. 트리는 일부를 떼어내도 트리 구조이며 이를 서브 트리라 한다. 
5. 트리는 파일 시스템과 같이 계층적이고 정렬된 데이터를 다루기에 적합하다.

