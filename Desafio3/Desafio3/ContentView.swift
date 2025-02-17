//
//  ContentView.swift
//  Desafio3
//
//  Created by Turma02-20 on 11/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            RosaView()
                .tabItem{
                    Label("Rosa", systemImage: "paintbrush.fill")
                }
            CinzaView()
                .tabItem {
                    Label("Cinza", systemImage: "paintpalette.fill")
                }
            
            AzulView()
                .tabItem {
                    Label("Azul", systemImage: "paintbrush.pointed")
                }
            ListaView()
                .tabItem {
                    Label("Lista", systemImage: "list.bullet")
                }
            
        }
    }
}
#Preview {
    ContentView()
}
