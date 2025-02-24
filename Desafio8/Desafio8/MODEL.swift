//
//  MODEL.swift
//  Desafio7
//
//  Created by Turma02-20 on 17/02/25.
//

import Foundation


struct API : Decodable, Hashable{
    var _id : String
    var _rev : String
    var umidade : String
    var dataHora : Int
}

