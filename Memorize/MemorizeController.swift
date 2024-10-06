//
//  MemorizeController.swift
//  Memorize
//
//  Created by David Kim on 9/3/24.
//

import Foundation
import SwiftUI
class MemorizeController: ObservableObject{

    @Published var arrUsed: Array<String> = ["🐶","🐱","🐥", "🦧","🦤","🐳","🐶","🐱","🐥", "🦧","🦤","🐳"]
    

    
    func animalButtonPressed(){
        let animalArr: [String] = ["🐶","🐱","🐥", "🦧","🦤","🐳"]
        let createdArr = animalArr.map{ [$0, $0]}.flatMap{$0}
        let newArr = createdArr.shuffled()
        arrUsed = newArr
        
    }
    func foodButtonPressed(){
        let foodArr: [String] = ["🥐", "🍔", "🌭", "🧀","🍗","🦪","🍭"]
        let createdArr = foodArr.map{ [$0, $0]}.flatMap{$0}
        let newArr = createdArr.shuffled()
        arrUsed = newArr
        
    }
    func sportButtonPressed(){
        let sportArr: [String] = ["⚽️", "🏀", "🏈", "🎾", "🏐", "🎱","🏓","🥏"]
        let createdArr = sportArr.map{ [$0, $0]}.flatMap{$0}
        let newArr = createdArr.shuffled()
        arrUsed = newArr
        
    }
    
}

