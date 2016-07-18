//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    
    func solveTrivia (statesAndCapitals:[String:String]) -> String{

      var  correct = 0
        for (state,capital) in statesAndCapitals {
        
            for stateCharacter in state.lowercaseString.characters {
                let stateCString = String(stateCharacter)
                if capital.containsString(stateCString) {
                    break
                
                };
                correct += 1
                
                if correct == state.characters.count {
                    return state
                }
                
            }
        }
        return "no states"
    }
    
}

