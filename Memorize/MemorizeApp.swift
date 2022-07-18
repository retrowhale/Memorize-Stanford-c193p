//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Deniz Donmezer on 2022-07-12.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
