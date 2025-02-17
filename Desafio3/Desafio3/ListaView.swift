//
//  ListaView.swift
//  Desafio3
//
//  Created by Turma02-20 on 11/02/25.
//

import SwiftUI

struct ListaView: View {
    var body: some View {
        NavigationStack {
            List {
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintbrush")
                }
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintpalette")
                }
                HStack{
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintbrush.pointed")
                }
            }
            .navigationTitle("List")
        }
    }
}

#Preview {
    ListaView()
}
