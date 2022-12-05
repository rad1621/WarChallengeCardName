//
//  ContentView.swift
//  War Challenge
//
//  Created by Richard Dietz on 11/20/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card7"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {

    ZStack {
    
        Image("background").ignoresSafeArea()
        
    
        VStack {
            Spacer() //Space off the top
            // Top Logo
            Image("logo").padding(.all)
            Spacer()
            
                // Inert Cards
                HStack {
                    Image(playerCard).padding(.all)
                    Image(cpuCard).padding(.all)
                } // end HStack 1
        
            Spacer()
            
            // Insert Deal Button
            // Image("dealbutton").padding(.all)
            
            Button(action: {
                
                // Generate random number to pick cards
                let playerRand = Int.random(in: 2...14)
                let cpuRand = Int.random(in: 2...14)
                
                // update card
                playerCard = "card" + String(playerRand)
                cpuCard = "card" + String(cpuRand)
                
                // Update score
                
                if playerRand > cpuRand {
                    playerScore += 1
                }
                else if cpuRand > playerRand{
                    cpuScore += 1
                }
                
                
                },
                label: {
                    Image("dealbutton").padding(.all)
                })
            
            Spacer()
            
                // HStack of 2 VStacks for Player and CPU Score
                HStack { // Stack Player Score
                
                    Spacer()
                
                    // Player Score
                    VStack {
                        Text("Player")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 2.0)
                    
                        Text(String(playerScore))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 50.0)
                        
                    } // end VStack Player Score
                
                    Spacer()
                
                    // CPU Score
                    VStack {
                    
                        Text("CPU")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 2.0)
                    
                        Text(String(cpuScore))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(.bottom, 50.0)
                        
                    } // end VStack CPU Score
                
                Spacer()
        
                } // end HStack 2

            // Space off the bottom
            Spacer()
    
        } // end VStack 1
        
    } // end ZStack 1

} // end var body:
} // end struct ContentView
            
            

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
