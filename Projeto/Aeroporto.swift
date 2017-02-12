//
//  Aeroporto.swift
//  Projeto
//
//  Created by Faculdade Catolica do Tocantins on 11/02/17.
//  Copyright © 2017 Faculdade Catolica do Tocantins. All rights reserved.
//

import Foundation

class Aeroporto:NSObject
{
    //Variaveis da classe
    var nome:String
    var cidade:String
    var sigla:String
    var voos:[Voo]=[Voo]()
    
    //inicializando a classe
    init(nome: String, cidade: String, sigla: String)  {
        self.nome = nome
        self.cidade = cidade
        self.sigla = sigla
    }
    
    //retorno de chamada da classe
    override var description:String {
        return "Aero [Nome " + nome + ", Cidade " + cidade + ", Sigla " + sigla + "\n"
    }
    
    //Funcões que manipulam os dadoss
    func registra(voo:Voo) {
        //Cadastrar novo voo
        voos.append(voo)
    }
    
    func buscaVoos(companhia:Companhia) -> [Voo] {
        var ret:[Voo]=[Voo]()
        for voo in voos
        {
            if(voo.companhia == companhia)
            {
                //ret.append(voo)
                ret = [voo]
            }
        }
        return ret;
    }
    
    func buscaVoos(tipo:TipoVoo) -> [Voo] {
        //buscar voos por tipo
        var ret:[Voo]=[Voo]()
        for voo in voos
        {
            if(voo.tipo == tipo)
            {
                ret = [voo]
            }
        }
        return ret
    }
    
    func buscaVoos(companhia:Companhia, tipo:TipoVoo) -> [Voo] {
        //Busca voos por tipo de uma determinada companhia
        var ret:[Voo]=[Voo]()
        for voo in voos
        {
            if(voo.tipo == tipo && voo.companhia == companhia)
            {
                ret = [voo]
            }
        }
        return ret
    }
    
    func buscaVoo(numero:Int) -> Voo? {
        //Busca voo pelo numero de registro
        //let ret:Voo
        for voo in voos
        {
            if(voo.numeroVoo == numero)
            {
                return voo;
            }
        }
        return nil
    }
}
