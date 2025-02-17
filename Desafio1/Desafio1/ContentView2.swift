//
//  ContentView.swift
//  Desafio1
//
//  Created by Turma02-20 on 05/02/25.
//

import SwiftUI

struct ContentView2: View {
    var body: some View {
        HStack{
            Image("cruzeiro").resizable().padding(.trailing, 10.0).scaledToFit().frame(height: 100)
            
            
            VStack(spacing: 10){
                Text("Hackatruck")
                    .foregroundColor(.red)
                Text("77 Universidades")
                    .foregroundColor(.blue)
                Text("8 Estados Visitados")
                    .foregroundColor(.yellow)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView2()
}
