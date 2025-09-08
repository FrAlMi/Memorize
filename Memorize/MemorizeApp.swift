//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Алина Фролкина on 01.09.2025.
//

import SwiftUI

@main
struct MemorizeApp: App {
    @StateObject var game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            EmojieMemoryGameView(viewModel: game)
        }
    }
}
