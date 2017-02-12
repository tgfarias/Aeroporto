/**********************************************
 ESTA É UMA OBRA DE FICÇÃO, QUALQUER SEMELHANÇA
 COM A REALIDADE SERÁ MERA COINCIDÊNCIA
 Commit da classe main
 **********************************************/


//Cria as variaves de referencia para as companhias
var TAM = Companhia(nome:"TAM", fundacao:(dia:10, mes:10, ano:1993))
var GOL = Companhia(nome:"GOL", fundacao:(dia:10, mes:10, ano:1993))
var AZUL = Companhia(nome:"AZUL", fundacao:(dia:10, mes:10, ano:1993))
var PASSAREDO = Companhia(nome:"PASSAREDO", fundacao:(dia:10, mes:10, ano:1993))


//Cria as variaveis de referencia para os aeroportos
var aeroportoPalmas = Aeroporto(nome: "Brigadeiro Lysias Rodrigues", cidade: "Palmas", sigla: "PMW")
var aeroportoSPCongo = Aeroporto(nome: "Congonhas", cidade:"São Paulo", sigla: "CGH")
var aeroportoSPGuaru = Aeroporto(nome: "Guarulhos", cidade: "São Paulo", sigla: "GRU")
var aeroportoSPVirac = Aeroporto(nome: "Viracopos", cidade: "Campinas", sigla: "VCP")
var aeroportoRj = Aeroporto(nome: "Santos Dumont", cidade: "Rio de Janeiro", sigla: "SDU")


//Cria voos para os aeroportos
var vooPC = Voo(numeroVoo: 1020, tipo: TipoVoo.VOO_CHEGADA, companhia: TAM)
var vooPS = Voo(numeroVoo: 1040, tipo: TipoVoo.VOO_SAIDA, companhia: GOL)
var vooCC = Voo(numeroVoo: 2020, tipo: TipoVoo.VOO_CHEGADA, companhia: AZUL)
var vooCS = Voo(numeroVoo: 2040, tipo: TipoVoo.VOO_SAIDA, companhia: PASSAREDO)
var vooGC = Voo(numeroVoo: 3020, tipo: TipoVoo.VOO_CHEGADA, companhia: TAM)
var vooGS = Voo(numeroVoo: 3040, tipo: TipoVoo.VOO_SAIDA, companhia: AZUL)
var vooVC = Voo(numeroVoo: 4020, tipo: TipoVoo.VOO_CHEGADA, companhia: GOL)
var vooVS = Voo(numeroVoo: 4040, tipo: TipoVoo.VOO_SAIDA, companhia: PASSAREDO)
var vooSC = Voo(numeroVoo: 5020, tipo: TipoVoo.VOO_CHEGADA, companhia: AZUL)
var vooSS = Voo(numeroVoo: 5040, tipo: TipoVoo.VOO_SAIDA, companhia: PASSAREDO)


//Registra voos aeroportos
aeroportoPalmas.registra(voo: vooPC)
aeroportoPalmas.registra(voo: vooPS)
aeroportoSPCongo.registra(voo: vooCC)
aeroportoSPCongo.registra(voo: vooCS)
aeroportoSPGuaru.registra(voo: vooGC)
aeroportoSPGuaru.registra(voo: vooGS)
aeroportoSPVirac.registra(voo: vooVC)
aeroportoSPVirac.registra(voo: vooVS)
aeroportoRj.registra(voo: vooSC)
aeroportoRj.registra(voo: vooSS)


//Registra os aeroportos na infraero
var infraero = Infraero()
infraero.registra(aeroporto: aeroportoPalmas)
infraero.registra(aeroporto: aeroportoSPCongo)
infraero.registra(aeroporto: aeroportoSPGuaru)
infraero.registra(aeroporto: aeroportoSPVirac)
infraero.registra(aeroporto: aeroportoRj)


//Executa metodos e exibe resultados
print(infraero.buscaVoosAeroporto(sigla: "VCP"))
print(infraero.buscaVoosAeroporto(sigla: "PMW", tipo: TipoVoo.VOO_CHEGADA))
print(infraero.buscaVoosAeroporto(sigla: "SDU", companhia: AZUL, tipo: TipoVoo.VOO_CHEGADA))
print(infraero.buscaVooAeroporto(sigla: "VCP", numeroVoo: 4040)!)

