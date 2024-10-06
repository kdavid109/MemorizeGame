//
//  MemorizeApp.swift
//  Memorize
//
//  Created by David Kim on 9/3/24.
//

import SwiftUI

@main
struct MemorizeApp: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}



protocol flipCardProtocol: ObservableObject{
    var isFlipped: Bool { get }
    
    func flipButtonTapped()
}

struct Card:View{
    let content: String
    @Binding var isFaceUp: Bool

    
    var body: some View{
            Rectangle()
                .frame(width: 75, height:100)
                .foregroundStyle(Color.red)
                .opacity(0.4)
                .clipShape(RoundedRectangle(cornerRadius: 10.0))
                .onTapGesture {
                    print("i just toggled it ")
                    isFaceUp.toggle()
                    Text(content)
                }


        
    }
    

    
}
class flipCardPresenter: flipCardProtocol{
    @Published var isFlipped = false
    
    func flipButtonTapped() {
        isFlipped.toggle()
    }
}
