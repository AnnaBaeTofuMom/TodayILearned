//
//  reportResult.swift
//  Programmers_lv1
//
//  Created by 경원이 on 2022/06/21.
//

import Foundation
//내 풀이
//func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
//    let setReport = Set(report)
//
//    var array: [String] = []
//    var dict: [String: [String]] = [:]
//    var result: [Int] = []
//
//    for item in setReport {
//        let temp = item.components(separatedBy: " ")
//
//        if dict[temp[1]] == nil {
//            dict.updateValue([temp[0]], forKey: temp[1])
//        } else {
//            var orig = dict[temp[1]]
//            orig?.append(temp[0])
//            dict[temp[1]] = orig
//        }
//    }
//
//    for item in dict {
//        if item.value.count >= k {
//            array = array + item.value
//        }
//    }
//
//    for i in 0..<id_list.count {
//        result.append(array.filter { $0 == id_list[i] }.count)
//    }
//
//    return result
//}
//

import Foundation
//상원 풀이
var countMap: [String: Int] = [:] // 닉네임 별 신고횟수를 저장할 딕셔너리
var map: [String: Set<String>] = [:] // 닉네임 별 신고한 id를 저장할 딕셔너리

func makeHashMap(_ idlist:[String],  report:[String]) {
    for id in idlist {
        countMap[id] = 0
        map[id] = Set()
    }
    for str in report {
        let endIndex = str.index(before: str.endIndex)
        let splitIndex = str.index(after: str.firstIndex(of: " ")!)
        let fUser = String(str[str.startIndex..<str.firstIndex(of: " ")!])
        let sUser = String(str[splitIndex..<str.endIndex])

        if !map[fUser]!.contains(sUser) {
            map[fUser]?.insert(sUser)
            countMap[sUser]! += 1
        }
    }
}

func solution( id_list:[String],  report:[String], _ k:Int) -> [Int] {
    makeHashMap(id_list, report: report)
    var answer: [Int] = []

    for id in id_list {
        var cnt = 0
        for str in map[id]! {
            if countMap[str]! >= k {
                cnt += 1
            }
        }
        answer.append(cnt)
    }
    return answer
}
