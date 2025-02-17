//
//  MusicaView.swift
//  Desafio5
//
//  Created by Turma02-20 on 12/02/25.
//

import SwiftUI

struct MusicaView: View {
    @State var name:String
    @State var capa:String
    @State var artist:String
    var body: some View {
        ZStack{
            LinearGradient(colors: [.red, .black], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                Spacer()
                AsyncImage(url: URL(string: capa)){ result in
                    result.image?
                        .resizable()
                        .scaledToFill()
                }
                .frame(width: 200, height: 200)
                
                Text(name)
                    .fontWeight(.regular)
                    .font(.title)
                    .foregroundColor(.white)
                Text(artist)
                    .foregroundStyle(.white)
                    .font(.title3)
                Spacer()
                
                HStack(spacing:30){
                    Image(systemName: "shuffle")
                    Image(systemName: "backward.end.fill")
                    Image(systemName: "play.fill")
                        .resizable()
                        .scaledToFit()
                    Image(systemName: "forward.end.fill")
                    Image(systemName: "repeat")
                }
                .foregroundColor(.white)
                .scaledToFit()
                .scaleEffect(1.3)
                
                Spacer()
            }
            
        }
    }
    }


#Preview {
    MusicaView(name:"teste",capa:"https://i.scdn.co/image/ab67616d0000b2736ca5c90113b30c3c43ffb8f4", artist: "aaaa")
}
