//
//  main.swift
//  CodingTestQuestions
//
//  Created by 경원이 on 2022/05/25.
//
//  Y 배달 플랫폼 기출 유사문제

import Foundation

/*
 String S가 주어진다.
 S는 O,X 두가지 알파벳만을 가지고 있는데
 OXOXXOOOXXX 와 같이 S가 주어졌을때,
 이때 X는 O보다 뒤에 위치해야 하며, O보다 앞에 위치한 X는 삭제된다.
 OOOO, XXXX 처럼 O나 X로만 구성된 경우에도 조건을 만족한다.
 
 이때, 조건에 부합하는 S를 반환하기 위해 삭제해야 하는 글자의 개수를 반환하시오.
 
 예를 들어, S = "OXXOOXXX" 라면 2를 반환한다.
 "XXXXOOOO" 라면 4를 반환한다.
 "OOOXXXX" 라면 0을 반환한다.
 */

func solution1(s: String) -> Int {
    
    if !s.contains("O") || !s.contains("X") {
        return 0
    }
    
    var array = s.map { String($0) }
    
    for i in 0..<array.count {
        if array[i] == "X" {
            for j in i + 1..<array.count {
                if array[j] == "O" {
                    array[i] = "A"
                }
            }
        }
    }
    
    return array.filter { $0 == "A" }.count
}


print(solution1(s: "OOXXXX"))


/*
 전구 문제
 (전구인덱스, on/off)
 개무식쓰 다비교 방법?
 3을 켰는데
 [(1, On), (2, off)]
 array[i][1] 다 온이야
 그럼 켜진다
 아니다
 그럼 안켜진다
 
 무지성이 미래다.
 */


/*
 
 분할 정복??
 
 [0, 1, 6, 6, 4, 6, 9, 9]
 이 배열을 슬라이스해서 (순서 그대로)
 최대합이 나오는 경우를 구하는건데
 조건 1
 슬라이스 하는 0번째 원소랑 마지막원소가 같아야함
 이게 다야
 예제에서는
 [6,6] [6,6,4,6] [9,9] [6,4,6]
 조건에 만족하는 애들 3개가 나오고
 이중에 최대합인거는 2번째거
 
 2번째거의 합 출력
 */

/*
1. 급한 마음에 Xcode에서 안품 이게 젤 큰문제 진짜 병신인지?
2. 못풀거같은거 그냥 버릴걸 차라리 실제로 버려서 혜진이 풀게했음 ㅋㅋ 이건잘한지도?
3. 버릴거면 3번을 버릴걸ㅋㅋ

*/
