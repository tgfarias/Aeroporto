//
//  Compania.swift
//  Projeto
//
//  Created by Faculdade Catolica do Tocantins on 11/02/17.
//  Copyright © 2017 Faculdade Catolica do Tocantins. All rights reserved.
//

import Foundation

class Companhia:NSObject
{
    var nome:String = ""
    var dataFundacao:(dia:Int, mes:Int, ano:Int)
    
    init(nome:String, fundacao:(dia:Int, mes:Int, ano:Int)) {
        self.nome = nome;
        dataFundacao = fundacao;
    }
    
    override var description:String {
        return nome + "\(dataFundacao)" ;
    }
}
