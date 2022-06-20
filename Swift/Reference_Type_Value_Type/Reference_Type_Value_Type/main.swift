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


// weak person과 person 의 차이 확인해보기
// 강한참조로 캡쳐를 할때 참조 카운트가 +1 되기 때문에 아래서 nil로 해제해줘도 카운트가 +1이 됨
// 그래서 person을 nil을 해줘도 mama가 프린트 되는 상황이 됨.
// 약한 참조를 해주면 참조 카운트가 올라가지 않기 때문에 nil을 해주면 완전히 해제되어 nil이 프링트 됨
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
