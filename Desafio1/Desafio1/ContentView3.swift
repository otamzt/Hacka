//
//  ContentView.swift
//  Desafio1
//
//  Created by Turma02-20 on 05/02/25.
//

import SwiftUI

struct ContentView3: View {
    var body: some View {
        VStack{
            HStack{
                Text("username")
                    .padding(.leading)
                Spacer()
                Image(systemName: "newspaper")
                Image(systemName: "newspaper")
            }
            Rectangle()
            .foregroundColor(Color(red: 0.8, green: 0.8, blue:0.8))
            .frame(height: 2)
            HStack{
                
                Circle()
                    .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                VStack{
                    HStack(spacing: 25){
                        VStack{
                            Text("8").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold(true)
                            Text("Posts").font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                        }
                        
                        
                        VStack{
                            Text("12k").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold(true)
                            Text("Seguidores").font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                        }
                        
                        
                        VStack{
                            Text("2k").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold(true)
                            Text("Seguindo").font(/*@START_MENU_TOKEN@*/.body/*@END_MENU_TOKEN@*/)
                        }
                    }
                    Text("Editar Perfil")
                        .frame(width: 150)
                        .foregroundStyle(.black)
                        .background(.gray)
                        .clipShape(RoundedRectangle(cornerRadius: 5, style: .continuous))
                }
                
            }.padding()
            VStack{
                HStack(){
                    Text("Nome Sobrenome")
                        .bold()
                    Spacer()
                }
                HStack{
                    Text("Descricao")
                    Spacer()
                }
            }.padding()
            Rectangle()
                .foregroundColor(Color(red: 0.8, green: 0.8, blue:0.8))
                .frame(height: 2)
            Spacer()
            
        }
    }
}

#Preview {
    ContentView3()
}
