//
//  BinarySearch02.swift
//  Algorithm06
//
//  Created by 경원이 on 2022/05/31.
//  201p 떡볶이 떡 만들기

import Foundation

/*

 떡볶이의 떡을 만드는데, 떡의 길이가 일정하지 않다. 대신에 한 봉지 안에 들어가는 떡의 총 길이는 절단기로 잘라서 맞춰준다.
 절단기에 높이 H를 지정하면 줄지어진 떡을 한번에 절단한다.
 높이가 H보다 긴 떡은 H 윗부분이 잘릴것이고, 낮은 떡은 잘리지 않는다.
 
 예를 들어, 높이가 19, 14, 10, 17인 떡이 나란히 있고, 절단기 높이를 15로 하면 잘린 떡의 길이는 4, 0, 0, 2 일 것이다.
 손님은 잘려나간 6만큼의 길이를 가져간다.
 
 손님이 왔을때 요청한 총 길이가 M일때, 적어도 M만큼의 떡을 얻기 위해 설정할 수 있는 절단기의 높이의 최댓값을 구하시오.
 
 */

func tteokBinary(tteokHeight: [Int], target: Int) -> Int? {
    var sorted = tteokHeight.sorted()
    var start = 0
    var end = tteokHeight.last!
    var result = 0
    
    while start <= end {
        var mid = (start + end) / 2
        var total = 0
        
        
        for i in sorted {
            if i > mid {
                total += i - mid
            }
        }
        //정확하게 딱 잘리는 타이밍 있으면 바로 리턴
        if total == target {
            return mid
        }
        
        if total < target {
            end = mid - 1
        } else {
            //정확하게 잘리는 타이밍 없는데 일단 최대한 덜 잘랐을때가 정답이기 때문에 result = mid를 여기서 해줌
            result = mid
            start = mid + 1
        }
        
    }
    
    
    return result
}

