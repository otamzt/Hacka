//
//  SwViewModel.swift
//  Desafio7
//
//  Created by Turma02-20 on 17/02/25.
//

import Foundation

class umdViewModel : ObservableObject{
    @Published var arrayUmd : [API] = []
    func fetch(){
        var link = "http://192.168.128.25:1880/leitura"
        var task = URLSession.shared.dataTask(with: URL(string: link)!){ data, _, error in
            do {
                self.arrayUmd = try JSONDecoder().decode([API].self, from: data!).sorted(by: {$0.dataHora>$1.dataHora})
                
            }
            catch{
                print(error)
            }
        }
        task.resume()
    }
    
}
