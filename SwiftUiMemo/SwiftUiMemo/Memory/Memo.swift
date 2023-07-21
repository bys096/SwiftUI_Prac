//
//  Memo.swift
//  SwiftUiMemo
//
//  Created by 반영서 on 2023/07/03.
//

import Foundation
import SwiftUI


/// <#Description#>
/// Identifiable: 리스트를 쉽게 바인딩하기 위해서
/// ObservableObject: View를 자동으로 업데이트 하기 위해서
class Memo: Identifiable, ObservableObject {
    let id: UUID
    // 새로운 값을 저장할 때마다, 바인딩 되어 있는 UI가 자동으로 업데이트
    @Published var content: String
    
    let insertDate: Date
    
    init(content: String, insertDate: Date = Date.now) {
        id = UUID()
        self.content = content
        self.insertDate = insertDate
    }
}
