//
//  SwiftUiMemoApp.swift
//  SwiftUiMemo
//
//  Created by 반영서 on 2023/07/03.
//

import SwiftUI

@main
struct SwiftUiMemoApp: App {
    @StateObject var store = MemoStore()
    
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(store)
        }
    }
}
