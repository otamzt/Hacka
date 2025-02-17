//
//  Modo2View.swift
//  Desafio4
//
//  Created by Turma02-20 on 11/02/25.
//

import SwiftUI

struct Modo2View: View {
    @State var cor: Color = .fundo
    @State var nome: String = ""

    var body: some View {
        NavigationStack {
            ZStack{
                cor.ignoresSafeArea()
                VStack{
                    Spacer()
                    TextField("Nome", text: $nome)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        
                    Text("Bem vindo, "+nome)
                    Spacer()
                    NavigationLink(destination: AcessarTela(nome: nome)){
                        Text("Acessar Tela")
                            .padding()
                            .background(.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 5, style: .continuous))
                            .foregroundColor(.white)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)

                    }
                    Spacer()
                }
                .frame(width: 300, height: 180)
                .background(.pink)
                .clipShape(RoundedRectangle(cornerRadius: 5, style: .continuous))
                .foregroundColor(.white)
            }
        }
    }
}


#Preview {
    Modo2View()
}
