//
//  ContentView.swift
//  Desafio7
//
//  Created by Turma02-20 on 17/02/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var umd = umdViewModel()
    var body: some View {
        ScrollView{
            VStack(spacing:20) {
                    ForEach(umd.arrayUmd, id:\.self){
                        umd in
                        Text(umd.umidade)
                        }
                    }
                }
                .onAppear(){
                    umd.fetch()
                }
                .padding()
            }
}


#Preview {
    ContentView()
}
