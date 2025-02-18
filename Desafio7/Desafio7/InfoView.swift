//
//  InfoView.swift
//  Desafio7
//
//  Created by Turma02-20 on 17/02/25.
//

import SwiftUI

struct InfoView: View {
    @State var url : String
    @StateObject var sw = SwViewModel()
    var body: some View {
        ZStack{
            Image("estrelas")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            Image("StarWars")
                .resizable()
                .scaledToFit()
                .scaleEffect(0.3)
                .opacity(0.4)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            VStack {
                if(sw.arraySwp != nil){
                    Text(sw.arraySwp!.name)
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundStyle(.white)
                    Spacer()
                    Text(sw.arraySw.description)
                        .foregroundStyle(.white)
                    Text("Mass "+sw.arraySwp!.mass)
                    
                    Spacer()
                }
            }.onAppear(){
                sw.fetch1(url: url)
            }
            .padding()
        }
    }
    }

#Preview {
    InfoView(url: "https://www.swapi.tech/api/people/1")
}
