import UIKit




struct MyPet {
    var title: String = "타이틀 없음"
    
    // private var: 접근, 수정 전부 불가
    // private (set) var: 접근은 가능하나, 외부에서 수정 불가
    private (set) var name: String = "이름 없음"
    mutating func setName(to newName: String) {
        self.name = newName
    }
}

var myPet = MyPet()
myPet.name
myPet.title
myPet.title = "호롤"
//myPet.name = "마이펫"
myPet.setName(to: "반대리")
