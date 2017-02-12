//
//  Infraero.swift
//  Projeto
//
//  Created by Faculdade Catolica do Tocantins on 11/02/17.
//  Copyright © 2017 Faculdade Catolica do Tocantins. All rights reserved.
//

import Foundation

class Infraero:NSObject{
    var aeroportos:[Aeroporto]
    
    override init() {
        self.aeroportos = []
    }
    
    override var description: String{
        return aeroportos.description
        
    }
    
    func registra(aeroporto:Aeroporto) {
        //Cadastrar novo aeroporto
        aeroportos.append(aeroporto)
        
    }
    
    func buscaVoosAeroporto(sigla:String) -> [Voo] {
        for aeroporto in aeroportos
        {
            if(aeroporto.sigla == sigla)
            {
                //print(aeroporto)
                return aeroporto.voos
            }
        }
        return [];
    }
    
    func buscaVoosAeroporto(sigla:String, tipo:TipoVoo) -> [Voo] {
        //buscar voos por tipo
        //var ret:[Voo]=[Voo]()
        for aeroporto in aeroportos
        {
            if(aeroporto.sigla == sigla)
            {
                return aeroporto.buscaVoos(tipo: tipo);
            }
        }
        return []
    }
    
    func buscaVoosAeroporto(sigla:String, companhia:Companhia, tipo:TipoVoo) -> [Voo] {
        //Busca voos por tipo de uma determinada companhia
        //var ret:[Voo]=[Voo]()
        for aeroporto in aeroportos
        {
            if(aeroporto.sigla == sigla)
            {
                return aeroporto.buscaVoos(companhia: companhia, tipo: tipo)
            }
        }
        return []
    }
    
    func buscaVooAeroporto(sigla:String, numeroVoo:Int) -> Voo? {
        //Busca voo pelo numero de registro
        for aeroporto in aeroportos
        {
            if(aeroporto.sigla == sigla)
            {
                return aeroporto.buscaVoo(numero: numeroVoo)
            }
        }
        return nil;
    }
    
    
    
}
