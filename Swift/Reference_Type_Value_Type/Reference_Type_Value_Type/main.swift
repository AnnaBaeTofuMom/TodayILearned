//
//  main.swift
//  Reference_Type_Value_Type
//
//  Created by 경원이 on 2022/06/20.
//

import Foundation

//참조타입일때는 캡쳐 당시에 주소값을 저장하는듯?

class Person {
    var name: String?

    func printName() {
        print("my name is \(self.name)")
    }

    init() {
        self.name = "Anna"
    }
}

var person: Person? = Person()


//weak person과 person 의 차이 확인해보기
let closure = { [weak person] in
    print(person?.name)
}

person?.name = "mama"

closure() //mama

person = nil

closure() //nil


// 값타입은 캡쳐 당시의 값을 유지
//struct Person {
//    var name: String?
//
//    func printName() {
//        print("my name is \(self.name)")
//    }
//
//    init() {
//        self.name = "Anna"
//    }
//}
//
//var person: Person? = Person()
//
//let closure = { [person] in
//    print(person?.name)
//}
//
//person?.name = "mama"
//
//closure() //Anna
//
//person = nil
//
//closure() //Anna
