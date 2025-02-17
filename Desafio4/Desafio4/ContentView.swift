//
//  ContentView.swift
//  Desafio4
//
//  Created by Turma02-20 on 11/02/25.
//

import SwiftUI
struct SheetView: View {
    @State var cor: Color = .fundo
    var body: some View {
        NavigationStack {
            ZStack{
                cor.ignoresSafeArea()
                VStack{
                    Text("Nome: Otávio\nSobrenome: Mazzutti")
                    .frame(width: 300, height: 180)
                    .background(.pink)
                    .clipShape(RoundedRectangle(cornerRadius: 5, style: .continuous))
                    .foregroundColor(.white)
                }
            }
        }
    }
}

struct ContentView: View {
    @State var cor: Color = .fundo
    @State var trocar = false
    var body: some View {
            NavigationStack {
                ZStack{
                    cor.ignoresSafeArea()
                    VStack{
                        NavigationLink("Modo 1") {
                            Modo1View()
                        }
                        .frame(width: 200, height: 60)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 5, style: .continuous))
                        .foregroundColor(.white)
                        
                        NavigationLink("Modo 2") {
                            Modo2View()
                        }
                        .frame(width: 200, height: 60)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 5, style: .continuous))
                        .foregroundColor(.white)
                        Button("Modo 3") {
                            trocar.toggle()
                        }
                        .sheet(isPresented: $trocar ){
                            SheetView()
                        }
                        .frame(width: 200, height: 60)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 5, style: .continuous))
                        .foregroundColor(.white)
                    }
                }
            }
        }
    }


#Preview {
    ContentView()
}
