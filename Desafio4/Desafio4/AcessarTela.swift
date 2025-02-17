//
//  AcessarTela.swift
//  Desafio4
//
//  Created by Turma02-20 on 11/02/25.
//

import SwiftUI

struct AcessarTela: View {
    var nome : String
    @State var cor: Color = .fundo
    var body: some View {
        ZStack{
            cor.ignoresSafeArea()
            VStack{
                Text("Volte, \(nome)!")
            }
            .padding(50.0)
            .background(.pink)
            .clipShape(RoundedRectangle(cornerRadius: 5, style: .continuous))
            .foregroundColor(.white)
        }
    }
}

#Preview {
    AcessarTela(nome: "Teste")
}
