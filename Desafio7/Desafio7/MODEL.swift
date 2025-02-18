//
//  MODEL.swift
//  Desafio7
//
//  Created by Turma02-20 on 17/02/25.
//

import Foundation

struct Sw : Decodable, Hashable{
    var uid : String
    var name : String
    var url : String
}
struct API : Decodable{
    var results : [Sw]
}

struct Properties : Decodable, Hashable{
    var name : String
    var height: String
    var mass: String
}

struct API2 : Decodable{
    var result : Result
    
}


struct Result : Decodable{
    var properties : Properties
    var description : String?
}

