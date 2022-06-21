//
//  reportResult.swift
//  Programmers_lv1
//
//  Created by 경원이 on 2022/06/21.
//

import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    let setReport = Set(report)
    
    var array: [String] = []
    var dict: [String: [String]] = [:]
    var result: [Int] = []
    
    for item in setReport {
        let temp = item.components(separatedBy: " ")
        
        if dict[temp[1]] == nil {
            dict.updateValue([temp[0]], forKey: temp[1])
        } else {
            var orig = dict[temp[1]]
            orig?.append(temp[0])
            dict[temp[1]] = orig
        }
    }
    
    for item in dict {
        if item.value.count >= k {
            array = array + item.value
        }
    }

    for i in 0..<id_list.count {
        result.append(array.filter { $0 == id_list[i] }.count)
    }
    
    return result
}

