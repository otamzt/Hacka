//
//  RosaView.swift
//  Desafio3
//
//  Created by Turma02-20 on 11/02/25.
//

import SwiftUI
    
struct RosaView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.pink)
                .edgesIgnoringSafeArea(.top)
            Circle()
                .scaleEffect(0.8)
            Image(systemName: "paintbrush")
                .scaleEffect(10)
                .foregroundColor(.pink)
        }
    }
}

#Preview {
    RosaView()
}
