//
//  ContentView.swift
//  SwiftUI Tutorial
//
//  Created by Emmanuel Ugwuoke on 12/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var userCard = "card4"
    @State private var cpuCard = "card5"
    @State private var userScore = 0
    @State private var cpuScore = 0
    
    
    var body: some View {
        ZStack {
            Image("background").renderingMode(.original).resizable().aspectRatio(contentMode: .fill).ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                    .aspectRatio(contentMode: .fit)
                Spacer()
                HStack(spacing: 60){
                    Image(userCard)
                    
                    Image(cpuCard)
                }
                Spacer()
                Button(action: {
                    let userRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    userCard = "card\(userRand)"
                    cpuCard = "card\(cpuRand)"
                    
                    if userRand > cpuRand {
                        userScore += 1
                        return
                    }
                    
                    if cpuRand > userRand {
                        cpuScore += 1
                        return
                    }
                   
                }, label: {  Image("dealbutton")})
              
                Spacer()
                
                HStack{
                    Spacer()
                    VStack(spacing: 20){
                        Text("Player").font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        
                        Text(String(userScore)).font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    }
                    Spacer()
                    VStack(spacing: 20){
                        Text("CPU").font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        
                        Text(String(cpuScore)).font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
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
