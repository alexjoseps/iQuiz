//
//  Questao.swift
//  iQuiz
//
//  Created by Alex Souza on 30/11/25.
//

import Foundation

struct Questao {
    var titulo: String
    var respostas: [String]
    let respostaCorreta: Int
}

let listaDeQuestoes = [
    Questao(
        titulo: "Qual planeta é destruído pela Estrela da Morte em A New Hope?",
        respostas: ["Naboo", "Alderaan", "Jedha"],
        respostaCorreta: 1
    ),
    Questao(
        titulo: "Quem treinou o Conde Dooku antes dele se tornar um Sith?",
        respostas: ["Mace Windu", "Yoda", "Qui-Gon Jinn"],
        respostaCorreta: 1
    ),
    Questao(
        titulo: "Que tipo de criatura é o Chewbacca?",
        respostas: ["Rodiano", "Wookiee", "Mon Calamari"],
        respostaCorreta: 1
    ),
    Questao(
        titulo: "Qual desses caças é usado pela Aliança Rebelde?",
        respostas: ["TIE Interceptor", "X-Wing", "N-1 Starfighter"],
        respostaCorreta: 1
    ),
    Questao(
        titulo: "Quem foi o líder da Federação de Comércio em A Ameaça Fantasma?",
        respostas: ["Nute Gunray", "Wat Tambor", "Boss Nass"],
        respostaCorreta: 0
    ),
    Questao(
        titulo: "Qual é a cor do sabre de luz de Mace Windu?",
        respostas: ["Azul", "Verde", "Roxo"],
        respostaCorreta: 2
    ),
    Questao(
        titulo: "Em The Mandalorian, qual é o verdadeiro nome do 'Baby Yoda'?",
        respostas: ["Tarre", "Grogu", "Bendu"],
        respostaCorreta: 1
    ),
    Questao(
        titulo: "Qual título Darth Vader ocupa no Império?",
        respostas: ["Marechal Imperial", "Lorde das Sombras", "Executor do Imperador"],
        respostaCorreta: 2
    ),
    Questao(
        titulo: "Quem atira primeiro na versão original de 1977 de A New Hope?",
        respostas: ["Greedo", "Han Solo", "Boba Fett"],
        respostaCorreta: 1
    ),
    Questao(
        titulo: "Qual é a arma principal dos Stormtroopers padrão?",
        respostas: ["E-11 Blaster Rifle", "DLT-20A Sniper", "CA-87 Shock Blaster"],
        respostaCorreta: 0
    )
]
