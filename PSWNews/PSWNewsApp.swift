//
//  PSWNewsApp.swift
//  PSWNews
//
//  Created by si woong park on 2022/09/13.
//

import SwiftUI

@main
struct PSWNewsApp: App {
    @StateObject var articleBookmarkVM = ArticleBookmarkViewModel.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(articleBookmarkVM)
        }
    }
}
