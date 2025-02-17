//
//  ContentView.swift
//  Desafio6
//
//  Created by Turma02-20 on 13/02/25.
//

import SwiftUI
import MapKit
struct Location: Hashable{
    let name: String
    let foto: String
    let descricao: String
    let latitude: Double
    let longitude: Double
}
struct SheetView:View {
    @State var c:Color = .yellow
    @Environment(\.dismiss) var dismiss
    @State var lugar: Location
    var body: some View {
        ZStack{
            c.ignoresSafeArea()
            Text(lugar.name)
        }
    }
}
var annotations = [
        Location(name: "RJ", foto: "https://rederiohoteis.com/wp-content/uploads/2017/09/2017-10-29-cristo-redentor-conheca-a-historia-dessa-maravilha-do-mundo-moderno2.jpg.webp",descricao: "Cristo Redentor", latitude: -22.951918,  longitude: -43.210570),
        Location(name: "BH", foto: "https://rederiohoteis.com/wp-content/uploads/2017/09/2017-10-29-cristo-redentor-conheca-a-historia-dessa-maravilha-do-mundo-moderno2.jpg.webp",descricao: "Belzonte", latitude: -19.924663,  longitude: -43.935407)
    ]
struct ContentView: View {
    @State var troca = false
    @State private var position = MapCameraPosition.region(MKCoordinateRegion(center:CLLocationCoordinate2D(latitude: -19.924663, longitude: -43.935407), span: MKCoordinateSpan(latitudeDelta: 20, longitudeDelta:10)))
    @State private var lugar =
     Location(name: "RJ", foto: "https://rederiohoteis.com/wp-content/uploads/2017/09/2017-10-29-cristo-redentor-conheca-a-historia-dessa-maravilha-do-mundo-moderno2.jpg.webp",descricao: "Cristo Redentor", latitude: -19.9224557,  longitude: -43.991597)
         
    var body: some View {
        ZStack {
            Map(position: $position){
                ForEach(annotations, id: \.self) { a in
                    Annotation(a.name, coordinate: CLLocationCoordinate2D(latitude: a.latitude, longitude: a.longitude))
                    {
                        Image(systemName: "globe").onTapGesture {
                            troca.toggle()
                        }
                    }
                }
            }.sheet(isPresented: $troca){
                SheetView(lugar:lugar)
            }
                .ignoresSafeArea()
                
            VStack{
                
                Picker("Escolha uma cidade", selection: $lugar){
                    ForEach(annotations, id: \.self) { la in
                        Text(la.name)
                        
                    }
                }.background(.yellow)
                    .frame(width: 300, height: 4)
                    .padding()
                Spacer()
                    
            }
            
        }
    }
}

#Preview {
    ContentView()
}
