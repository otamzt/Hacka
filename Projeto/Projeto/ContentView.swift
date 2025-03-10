import SwiftUI
struct ContentView: View {
    @State var nome: String = ""
    @State var end: String = ""
    @State var cpf: String = ""
    var body: some View {
        ZStack{
            VStack(spacing: 10){
                HStack{
                    Image(systemName: "bell.badge.fill")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                        .font(.title)
                    Spacer()
                    Image(systemName: "person.circle.fill")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                        .font(.title)
                }
                .padding()
                Text("Dados Pessoais")
                    .font(.title)
                    .fontWeight(.bold)
                Divider()
                VStack{
                    
                    TextField("Nome", text: $nome)
                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                    Divider()
                    TextField("Cpf", text: $cpf)
                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                    Divider()
                    TextField("Endereço", text: $end)
                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)

                    
                }
                .shadow(radius: 8)
                .padding()
                Divider()
                VStack{
                    Text("Consultas")
                        .font(.title)
                        .fontWeight(.bold)
                    HStack{
                        Text("Postinho Y")
                            .font(.title2)
                        Spacer()
                        Button("Cancelar") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        .foregroundColor(.white)
                        .bold()
                        .buttonStyle(.borderedProminent)
                        .tint(.red)
                        Button("Localização") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        .foregroundColor(.white)
                        .bold()
                        .buttonStyle(.borderedProminent)
                        .tint(.blue)
                        
                    }
                    HStack{
                        Text("Postinho X")
                            .font(.title2)
                        Spacer()
                        Button("Cancelar") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        .foregroundColor(.white)
                        .bold()
                        .buttonStyle(.borderedProminent)
                        .tint(.red)
                        Button("Localização") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }.foregroundColor(.white)
                        .bold()
                        .buttonStyle(.borderedProminent)
                        .tint(.blue)
                        
                    }
                    
                }.padding()
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
