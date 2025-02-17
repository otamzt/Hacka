//
//  ContentView.swift
//  Desafio2
//
//  Created by Turma02-20 on 07/02/25.
//

import SwiftUI

struct ContentView: View {
    @State private var caixa = false;
    @State private var nome:String = "";
    var body: some View {
        ZStack {
            
            Image("Fundo")
                .resizable()
                .padding(.trailing, -150.0)
                .scaledToFit()
                .scaleEffect(3.0)
                .opacity(0.2)
            VStack(){
                if(nome.isEmpty){
                    Text("Bem Vindo")
                        .font(.title)
                }
                else{
                    Text("Bem Vindo, "+nome)
                        .font(.title)
                }
                TextField("Nome", text: $nome)
                    .multilineTextAlignment(.center)
                Spacer()
                    VStack(spacing: -40){
                        Spacer()
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .scaleEffect(0.7)
                            .shadow(radius: 10)
                        Image("truck")
                            .resizable()
                            .scaledToFit()
                            .scaleEffect(0.7)
                            .shadow(radius: 10)
                        Spacer()
                    }
                Button("Entrar"){
                    caixa.toggle()
                }
                .padding(.bottom, -9.0)
                .frame(height: 10.0)
                .alert(isPresented: $caixa, content: {
                    Alert(
                        title: Text("ALERTA !"),
                        message: Text("Você irá iniciar o desafio da aula agora"),
                        dismissButton: .default(Text("Vamos lá"))
                    )
                })
                
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
