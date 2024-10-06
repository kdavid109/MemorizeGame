//
//  ContentView.swift
//  Memorize
//
//  Created by David Kim on 9/3/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var memorizedController = MemorizeController()
    @State private var isFaceUp: Bool = false
    @State var amIDefault: Bool = true
    // state for init
    // A computed property has the first few requirements of a variable but then has information encapsulated in curly braces
   
    
    var body: some View {
        
        let numOfRectangles = memorizedController.arrUsed.count
        
        let itemsPerRow = max(2, min(4, numOfRectangles / 3))
        
        
        VStack(spacing: 10) {
            Text("Memorize!")
                .font(.largeTitle)
                .fontWeight(.medium)
                .foregroundColor(.red)
            
            Spacer()
            
            // A way where I can make this dynamic is by
            // Creating a double for loop and having the top for loop cap at the biggest number that is divisible (Maxed out at 4)
            // Im inserting the squares needed to make the board

            ForEach(0..<numOfRectangles, id: \.self) { num in
                
                HStack{
                    ForEach(0..<itemsPerRow, id: \.self){ idx in
                        let index = num * itemsPerRow + idx
                        if index < numOfRectangles{
                            ZStack{
                                Card(content: memorizedController.arrUsed[index], isFaceUp: $isFaceUp)

                            }
                                
                        }
                    }
                }
            }
            

            
            Spacer()
            
            // Buttons
            HStack{
                Spacer()
                Button(action: {
                    amIDefault.toggle()
                    memorizedController.foodButtonPressed()
                }, label: {
                    VStack{
                        Image(systemName: "carrot")
                        Text("Food")
                    }
                
                })
                
                Spacer()
                
                Button(action: {
                    amIDefault.toggle()
                    memorizedController.animalButtonPressed()
                }, label: {
                    VStack{
                        Image(systemName: "fish")
                        Text("Animal")
                    }
                    
                })
                Spacer()
                Button(action: {
                    amIDefault.toggle()
                    memorizedController.sportButtonPressed()
                }, label: {
                    VStack{
                        Image(systemName: "figure.basketball")
                        Text("Sports")
                    }
                    
                })
                Spacer()
                
            }
            
        }
        
        .padding()
    }
}



#Preview {
    ContentView()
}
