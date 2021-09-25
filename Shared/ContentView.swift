//
//  ContentView.swift
//  Shared
//
//  Created by Marcus J Naess on 7/28/21.
//

import SwiftUI


struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
        
    var body: some View {
        
        ZStack {
            
            Image("background").aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button(action: {
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if(playerRand > cpuRand) {
                        playerScore += 1
                    }
                    else if(playerRand < cpuRand) {
                        cpuScore += 1
                    }
                    else {
                        
                    }
                    }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player").foregroundColor(.white)
                        Text(String(playerScore)).font(.largeTitle).foregroundColor(.white).padding(.top)
                    }
                        Spacer()
                    VStack {
                        Text(String("CPU")).foregroundColor(.white)
                        Text(String(cpuScore)).font(.largeTitle).foregroundColor(Color.white).padding(.top)
                    }
                    Spacer()
                }
                Spacer()
                
            }
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

