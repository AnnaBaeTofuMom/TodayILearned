//
//  WCommerce01.swift
//  CodingTestQuestions
//
//  Created by 배경원 on 2022/06/16.
//

import Foundation

func solutionW1(_ movie: [String]) -> [String] {
  var dic: [String: Int] = [:]

  for mov in movie {
    if dic[mov] == nil {
      dic[mov] = 1
    } else {
      dic[mov] = dic[mov]! + 1
    }
  }

  let sortDic = dic.sorted(by: {
    if $0.1 > $1.1 {
      return true
    } else if $0.1 == $1.1 {
      if $0.0 < $1.0 {
        return true
      } else {
        return false
      }
    } else {
      return false
    }
  })

  var answer: [String] = []
  for item in sortDic {
    answer.append(item.key)
  }
  return answer
}
