//
//  ContentView.swift
//  Desafio1
//
//  Created by Turma02-20 on 05/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack {
                Rectangle()
                    .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/).foregroundColor(.red)
                Spacer()
                Rectangle()
                    .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/).foregroundColor(.blue)
            }
            Spacer()
                .frame(height: 500)
            HStack{
                Rectangle()
                    .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/).foregroundColor(.green)
                Spacer()
                Rectangle()
                    .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/).foregroundColor(.yellow)
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
