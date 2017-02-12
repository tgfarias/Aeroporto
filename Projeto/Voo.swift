//
//  Voo.swift
//  Projeto
//
//  Created by Faculdade Catolica do Tocantins on 11/02/17.
//  Copyright © 2017 Faculdade Catolica do Tocantins. All rights reserved.
//

import Foundation

enum  TipoVoo{
    case VOO_CHEGADA
    case VOO_SAIDA
}

class Voo:NSObject{
    var numeroVoo:Int
    var tipo:TipoVoo
    var companhia:Companhia?
    
    init(numeroVoo:Int, tipo:TipoVoo, companhia:Companhia) {
        self.numeroVoo = numeroVoo
        self.tipo = tipo
        self.companhia = companhia
        //print("init")
    }
    
    deinit {
        print("deinit")
    }
    
    override var description: String {
        var auxTipo:String
        if (tipo == .VOO_CHEGADA)
        {
            auxTipo = "Chegada"
        }
        else{
            auxTipo = "Saída"
        }
        
        if let teste = companhia
        {
            return "Voo[Nome " + teste.nome + ", NºVoo " + "\(numeroVoo)" + ", Tipo " + auxTipo + "\n"
        }
        else{
            return "\(numeroVoo)" + auxTipo
        }
        
    }
}
