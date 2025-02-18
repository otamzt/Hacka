//
//  ContentView.swift
//  Desafio7
//
//  Created by Turma02-20 on 17/02/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var sw = SwViewModel()
    var body: some View {
        NavigationStack{
        ZStack{
            Image("estrelas")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            Image("StarWars")
                .resizable()
                .scaledToFit()
                .scaleEffect(0.3)
                .opacity(0.4)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            VStack(spacing:20) {
                    ForEach(sw.arraySw, id:\.self){
                        person in
                        NavigationLink( destination: InfoView(url: person.url)){
                            Text(person.name)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                                .font(.largeTitle)
                        }
                    }
                }
                .onAppear(){
                    sw.fetch()
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
