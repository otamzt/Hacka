//
//  ContentView.swift
//  Desafio5
//
//  Created by Turma02-20 on 12/02/25.
//

import SwiftUI
struct Song : Identifiable {
    var id: Int
    var name: String
    var artist: String
    var capa: String
}
var arrayMusicas = [
 Song(id: 1, name: "In Da Club", artist: "50 cent", capa: "https://i.scdn.co/image/ab67616d0000b273d843fabb75fef14010e30cae"),
 Song(id: 2, name: "All Eyez On Me", artist: "50 cent", capa: "https://m.media-amazon.com/images/I/61snhqynKLL._UF1000,1000_QL80_.jpg"),
 Song(id: 3, name: "Keep Ya Yead up", artist: "50 cent", capa: "https://cdn-images.dzcdn.net/images/cover/924830874f01bb19bfa6153f0e428e15/0x1900-000000-80-0-0.jpg"),
 Song(id: 4, name: "The Real Slim Shady", artist: "Eminem", capa: "https://lastfm.freetls.fastly.net/i/u/ar0/b2d31620504042f8c2d8a5d65f35eff6.jpg"),
 Song(id: 5, name: "Superman", artist: "Eminem", capa: "https://i.scdn.co/image/ab67616d0000b2736ca5c90113b30c3c43ffb8f4")
]
struct ContentView: View {
    var body: some View {
        
        NavigationStack{
            ZStack{
                LinearGradient(colors: [.red, .black], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                ScrollView{
                    VStack {
                        
                        AsyncImage(url: URL(string: "https://i.scdn.co/image/ab67616d0000b273d843fabb75fef14010e30cae")){ result in
                            result.image?
                                .resizable()
                                .scaledToFill()
                        }
                        .frame(width: 200, height: 200)
                        HStack{
                            Text("Hip Hop")
                                .fontWeight(.medium)
                                .font(.largeTitle)
                                .foregroundColor(.white)
                            Spacer()
                        }
                        .padding(.horizontal, 20)
                        HStack{
                            AsyncImage(url: URL(string: "https://instagram.fitr1-1.fna.fbcdn.net/v/t51.2885-19/468674577_1877274209713612_231302242299440489_n.jpg?stp=dst-jpg_s320x320_tt6&_nc_ht=instagram.fitr1-1.fna.fbcdn.net&_nc_cat=104&_nc_oc=Q6cZ2AEO_MNELkTYoYwusQMJaLowIi6NV58vUhDBRDHAYdu802BvRwc3U1Fs5yCpA4XNmXY&_nc_ohc=ZQlXy25_0gcQ7kNvgFP_hRc&_nc_gid=d3f2f725c3f148df867717036b564e83&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AYDkwRUB4H5K5oZFEaQTY90ooPBPgBJ9Pxi4qMnEp0p-ew&oe=67B2ABB7&_nc_sid=8b3546")){ result in
                                result.image?
                                    .resizable()
                                    .scaledToFill()
                            }
                            .frame(width: 30, height: 30)
                            Text("otamazzutti")
                                .foregroundStyle(.white)
                                
                            Spacer()
                        }
                        .padding(.bottom)
                        .padding(.horizontal, 20)
                        ForEach(arrayMusicas) { musica in
                            NavigationLink( destination: MusicaView(name:musica.name, capa: musica.capa, artist:musica.artist)){
                                
                                HStack{
                                    AsyncImage(url: URL(string: musica.capa)){ result in
                                        result.image?
                                            .resizable()
                                            .scaledToFill()
                                    }
                                    .frame(width: 60, height: 60)
                                    VStack{
                                        HStack{
                                            Text(musica.name)
                                                .fontWeight(.bold)
                                                .foregroundStyle(.white)
                                                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                                            Spacer()
                                        }
                                        HStack{
                                            Text(musica.artist)
                                                .foregroundStyle(.white)
                                            Spacer()
                                            
                                        }
                                        
                                    }

                                    Spacer()
                                    Image(systemName: "ellipsis")
                                }.padding(.horizontal, 10)
                            }
                        }
                        .padding(.top, 5)
                        Spacer()
                        HStack{
                            Text("Sugeridos")
                                .foregroundStyle(.white)
                                .font(.title)
                            Spacer()
                        }.padding(.top, 80)
                        ScrollView(.horizontal) {
                            HStack(spacing: 20) {
                                ForEach(0..<10) {
                                    Text("Item \($0)")
                                        .foregroundStyle(.white)
                                        .font(.largeTitle)
                                        .frame(width: 200, height: 200)
                                        .background(.red)
                                }
                            }
                        }
                        
                    }
                }
            }
        }.tint(.white)
    }
}
#Preview {
    ContentView()
}
