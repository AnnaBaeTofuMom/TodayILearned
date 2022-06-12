//
//  TworXChallenge.swift
//  CodingTestQuestions
//
//  Created by 배경원 on 2022/06/12.
//

import Foundation


func solution02(_ periods:[Int], _ payments:[[Int]], _ estimates:[Int]) -> [Int] {
    let periods = periods
    let payments = payments
    let estimates = estimates
    var result = [0,0]

    func isVIP(period: Int, sumPay: Int, estimate: Int) -> Bool {
        //2~5년 가입
        if period == 23 && sumPay + estimate >= 900000 {
            return true
        }
        
        if period == 59 && sumPay + estimate >= 600000 {
            return true
        }

        if period > 23 && period < 59 && sumPay >= 900000 {
            return true
        }

        if period >= 60 && sumPay >= 600000 {
            return true
        }

        return false
    }

    for i in 0..<periods.count {
        let period = periods[i]
        var sumPay = payments[i].reduce(0) { $0 + $1 }
        let estimate = estimates[i]

        print(period, sumPay)

        //이번달 VIP여부 체크
        if isVIP(period: period, sumPay: sumPay, estimate: estimate) == true {
            //이번달 VIP인 경우 다음달 VIP 여부 체크
            let nextSum = payments[i].reduce(1) { $0 + $1 } + estimate
            if isVIP(period: period + 1, sumPay: nextSum, estimate: estimate) == false {
                print("isVIP true")
                print("nextMonth")
                print(period, sumPay)
                result[1] += 1
            }
        } else {
            //이번달 VIP가 아니면 다음달 VIP여부 체크
            let nextSum = payments[i].reduce(1) { $0 + $1 } + estimate
            if isVIP(period: period + 1, sumPay: nextSum, estimate: estimate) == true {
                print("isVIP false")
                print("nextMonth")
                print(period, sumPay)
                result[0] += 1
            }
        }

        
    }
    
    
    return result
}
