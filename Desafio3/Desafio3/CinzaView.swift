//
//  CinzaView.swift
//  Desafio3
//
//  Created by Turma02-20 on 11/02/25.
//

import SwiftUI

struct CinzaView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.gray)
                .edgesIgnoringSafeArea(.top)
            Circle()
                .scaleEffect(0.8)
            Image(systemName: "paintpalette")
                .scaleEffect(10)
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    CinzaView()
}
