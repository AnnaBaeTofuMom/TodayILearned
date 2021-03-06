//
//  BinarySearch01.swift
//  Algorithm06
//
//  Created by 경원이 on 2022/05/28.
//

//197p 부품찾기

import Foundation

//동빈이네 전자매장에는 부품이 N개 있다. 각 부품은 정수 형태의 고유한 번호가 있다. 어느날 손님이 M개 종류의 부품을
//대량으로 구매하겠다며 당일 날 견적서를 요청했다.
//동빈이는 때를 놓치지 않고 손님이 문의한 부품 M개 종류를 모두 확인해서 견적서를 작성해야 한다.
//이때 가게 안에 부품이 모두 있는지 확인하는 프로그램을 작성해보자.

/*
 
 가게가 현재 보유한 부품이 총 다섯개일때 부품의 번호가 다음과 같다.
 N = 5
 [8, 3, 7, 9, 2]
 
 손님은 총 3개의 부품이 있는지 확인 요청했는데 부품 번호는 다음과 같다.
 
 M = 3
 [5, 7, 9]
 
 손님이 요청한 부품 번호의 순서대로 부품을 확인해 부품이 있으면 yes, 없으면 no를 출력하시오.
 */

func binarySearch(array: [Int], target: Int, start: Int, end: Int) -> Bool {
    
    var start = start
    var end = end
    
    while start <= end {
        var mid = (start + end) / 2
        
        if array[mid] == target {
            return true
        }
    
        if array[mid] < target {
            start = mid + 1
        } else {
            end = mid - 1
        }
        
    }
    
    return false
    
}

func solution01(array: [Int], require: [Int]) {
    
    for item in require {
        var result = binarySearch(array: array, target: item, start: 0, end: array.count - 1)
        
        if result == true {
            print("yes")
        } else {
            print("no")
            
        }
    }
}


