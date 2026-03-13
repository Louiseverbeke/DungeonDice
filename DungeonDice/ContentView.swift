//
//  ContentView.swift
//  DungeonDice
//
//  Created by Louise Verbeke on 12/03/2026.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "Roll a die!"
    private let diceTypes = [4, 6, 8, 10, 12, 20, 100]
    
    var body: some View {
        VStack {
            Text("Dungeon Dice")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.red)
            
            Spacer()
            
            Text(message)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Group {
                ForEach(diceTypes, id: \.self) { diceType in
                    Button("\(diceType)-sided") {
                        rollDie(sides: diceType)
                    }
                }
                
            }
            .buttonStyle(.glassProminent)
            .font(.title2)
            .tint(.red)
            
        }
        .padding()
    }
    
    func rollDie(sides: Int) {
        let result = Int.random(in: 1...sides)
        message = "You rolled a \(result) on a \(sides)-sided die."
    }
}

#Preview {
    ContentView()
}
