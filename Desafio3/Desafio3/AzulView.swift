//
//  AzulView.swift
//  Desafio3
//
//  Created by Turma02-20 on 11/02/25.
//

import SwiftUI

struct AzulView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.blue)
                .edgesIgnoringSafeArea(.top)
            Circle()
                .scaleEffect(0.8)
            Image(systemName: "paintbrush.pointed")
                .scaleEffect(10)
                .foregroundColor(.blue)
        }
    }
}

#Preview {
    AzulView()
}
