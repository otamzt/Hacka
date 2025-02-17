//
//  Modo1View.swift
//  Desafio4
//
//  Created by Turma02-20 on 11/02/25.
//

import SwiftUI

struct Modo1View: View {
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

#Preview {
    Modo1View()
}
