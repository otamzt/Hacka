//
//  SwViewModel.swift
//  Desafio7
//
//  Created by Turma02-20 on 17/02/25.
//

import Foundation

class SwViewModel : ObservableObject{
    @Published var arraySw : [Sw] = []
    @Published var arraySwp : Properties?
    func fetch(){
        var link = "https://www.swapi.tech/api/people"
        var task = URLSession.shared.dataTask(with: URL(string: link)!){ data, _, error in
            do {
                self.arraySw = try JSONDecoder().decode(API.self, from: data!).results
                
            }
            catch{
                print(error)
            }
        }
        task.resume()
    }
    
    func fetch1(url: String){
        print(url)
        var task = URLSession.shared.dataTask(with: URL(string: "https://www.swapi.tech/api/people/1")!){ xxx, _, error in
            do {
                self.arraySwp = try JSONDecoder().decode(API2.self, from: xxx!).result.properties
                print(self.arraySwp!.name)
            }
            catch{
                print(error)
            }
        }
        task.resume()
    }
}
