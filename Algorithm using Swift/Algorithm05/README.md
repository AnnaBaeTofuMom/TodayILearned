# 정렬

## 정렬 알고리즘이란? 
정렬이란 데이터를 특정한 기준에 따라서 순서대로 나열하는 것
정렬 알고리즘으로 정렬을 하면 '이진 탐색'이 가능해집니다. 이진 탐색을 하기 위한 전처리 과정입니다. 

### 정렬 알고리즘의 종류
- 선택 정렬
- 삽입 정렬
- 퀵 정렬
- 계수 정렬
- 기타 등등

## 선택정렬

데이터가 무작위로 있을 때, 이 중에서 가장 작은 데이터를 선택해 맨 앞에 있는 데이터와 바꾸고, 그다음 작은 데이터를 선택해 앞에서 두번째 데이터와 바꾸는 것을 반복하면 어떻게 될까?

### 선택정렬 소스코드
```Swift
for i in 0...array.count - 1 {
    var minIndex = i //가장 작은 원소의 인덱스
    for j in i + 1..<array.count {
        if array[minIndex] > array[j] {
            minIndex = j

        }
    }
    var frontNum = array[i]
    var changeNum = array[minIndex]
    array[i] = changeNum
    array[minIndex] = frontNum
}
```

결과값을 프린트 해보면 0부터 9까지 정렬된 것을 확인할 수 있다. 

### 선택정렬의 시간복잡도
선택정렬은 N개의 원소가 있는 배열에서 연산횟수가 N + 

(N - 1) + (N - 2) + ... + 2 가 되어서 
근사치로 N X (N + 1) / 2 로 가정하면 대략적으로 O(N^2)번 정도라고 볼 수 있다. 데이터 개수가 1만개 이상이면 가능하면 선택정렬은 하면 안되겠다.

## 삽입정렬

데이터를 하나씩 확인해서 적절한 위치에 삽입하면 어떨까? 선택정렬에 비해 실행 시간 측면에서 더욱 효율적일 것이다. 삽입정렬은 특히 필요할 때만 위치를 바꾸므로 데이터가 거의 정렬되어 있을 때 매우 유리하다. 선택정렬은 데이터의 상태와 상관없이 무조건 모든 원소를 바꾸고, 삽입 정렬은 바꿔야 할 때만 바꾼다. 

### 삽입 정렬 소스코드
삽입정렬은 첫번째 원소는 정렬하지 않고 시작한다. 이미 정렬되어 있다고 가정을 하고 있기 때문이다. 

두번째 원소를 첫번째 원소와 비교한다. 더 작다면 앞으로 넣어주고, 더 크면 그대로 둔다. 세번째 원소도 이런식으로 크기를 비교해 들어가야 할 곳에 넣어준다. 이렇게 적절한 위치에 삽입하는 과정을 반복하면 정렬이 완료된다. 

특징으로는, 왼쪽으로 옮겨가면서 자신보다 작은 원소를 만나면 그 자리를 자기 자리로 하기 때문에 그 이후에 뒷 부분은 연산할 필요가 없다. 

```Swift
var insertionArray = [7, 5, 9, 0, 3, 1, 6, 2, 4, 8]

for i in 1..<insertionArray.count {
    for j in stride(from: i, to: 0, by: -1) {
        if insertionArray[j] < insertionArray[j - 1] {
            insertionArray.swapAt(j, j - 1)
        } else {
            break //자기보다 작은 숫자 나오면 멈춤
        }
    }
}
```

## 퀵 정렬

퀵 정렬은 대부분의 프로그래밍 언어에서 제공하는 정렬 라이브러리의 근간이 되는 알고리즘이기도 하다. 
퀵 정렬은 기준을 설정한 다음 큰 수와 작은 수를 교환한 후, 리스트를 반으로 나누는 방식으로 동작한다.
아래는 호어 분할 방식을 기준으로 퀵 정렬을 설명하겠다. 

```Swift
var quickArray = [5, 7, 9, 0, 3, 1, 6, 2, 4, 8]
```

1. 배열의 첫번째 원소를 피벗으로 설정하고, 왼쪽에서부터는 피벗보다 큰 수를, 오른쪽에서 부터는 피벗보다 작은 수를 선택하여 서로의 자리를 바꿔준다. 이를 반복한다. 

```Swift
var quickArray = [5, 4, 2, 0, 3, 1, 6, 9, 7, 8]
```

2. 자리를 바꾸다가 서로의 자리가 엇갈리는(겹치는) 경우에 작은 데이터와 피벗의 위치를 바꿔준다. 
3. 피벗을 기준으로 왼쪽에는 작은 수들이, 오른쪽에 큰 수들이 남게 된다. 

```Swift
var quickArray = [1, 4, 2, 0, 3, 5, 6, 9, 7, 8]
```

4. 5를 기준으로 앞 뒤가 나누어 진 상태에서 다시 퀵 정렬을 시작한다. 
```Swift
var quickArray = [1, 4, 2, 0, 3, 5, 6, 9, 7, 8]
var leftArray = [1, 4, 2, 0, 3] -> [1, 0, 2, 4, 3] -> [0, 1, 2, 4, 3] -> [0, 1, 2, 4, 3] -> [0, 1, 2, 3, 4]
var rightArray = [5, 6, 9, 7, 8]

```

### 퀵 정렬 소스코드
```Swift 
func quickSort(_ array: [Int]) -> [Int] {
    guard let first = array.first, array.count > 1 else { return array }
 
    let pivot = first
    //피벗보다 작은 원소를 left, 피벗보다 큰 수를 right 배열에 넣고
    let left = array.filter { $0 < pivot }
    let right = array.filter { $0 > pivot }
    
    //그 배열을 다시 퀵 정렬(재귀)
    return quickSort(left) + [pivot] + quickSort(right)
}
//개발자 소들이 블로그 참고(https://babbab2.tistory.com/101)

```

## 계수정렬
계수 정렬은 특정한 조건에 부합할 때만 사용할 수 있지만, 매우 빠른 정렬 알고리즘이다. 
다만, 메모리를 크게 차지하기 때문에 가장 큰 데이터와 가장 작은 데이터가 1,000,000을 넘지 않을 때 효과적으로 사용할 수 있다.
대신 O(N)번을 보장한다! 

```Swift
var countingArray = [5, 5, 7, 7, 7, 8, 8, 1, 2, 3, 5, 3, 5, 6, 7,4, 5, 2]

func countingSort(_ array: [Int]) -> [Int] {
    var array = array
    var countingArray = Array(repeating: 0, count: array.max()! + 1)
    var result = [Int]()
    
    for num in array {
        countingArray[num] += 1
    }
    
    for i in 0..<array.max()! + 1 {
        for j in 0..<countingArray[i] {
            result.append(i)
        }
    }
    print(countingArray)
    
    return result
}
```






