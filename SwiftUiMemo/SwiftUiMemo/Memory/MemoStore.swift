//
//  MemoStore.swift
//  SwiftUiMemo
//
//  Created by 반영서 on 2023/07/03.
//

import Foundation

class MemoStore: ObservableObject {
    @Published var list: [Memo]         // 배열을 업데이트 할 때마다, 바인딩 되어 있는 뷰도 자동으로 업데이트
    
    init() {
        list = [
            Memo(content: "Hello", insertDate: Date.now),
            Memo(content: "Awesome", insertDate: Date.now.addingTimeInterval(3600 * -24)),
            Memo(content: "SwiftUI", insertDate: Date.now.addingTimeInterval(3600 * -48)),
        ]
        
    }
    
    func insert(memo: String) {
        list.insert(Memo(content: memo), at: 0)
    }
    
    func update(memo: Memo?, content: String) {
        guard let memo = memo else {
            return
        }
        memo.content = content
    }
    
    func delete(memo: Memo) {
        list.removeAll { $0.id == memo.id }
        
    }
    
    func delete(set: IndexSet) {
        for index in set {
            list.remove(at: index)
        }
    }
}
