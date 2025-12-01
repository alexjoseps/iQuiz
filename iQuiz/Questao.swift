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
        titulo: "Qual Jedi se torna aprendiz do Imperador Palpatine e adota o título de Darth Vader?",
        respostas: [
            "Obi-Wan Kenobi",
            "Anakin Skywalker",
            "Kit Fisto"
        ],
        respostaCorreta: 1),
    Questao(
        titulo: "Chewbacca pertence a qual espécie?",
        respostas: [
            "Twi'lek",
            "Zabrak",
            "Wookiee"
        ],
        respostaCorreta: 2),
    Questao(
        titulo: "Quem é o responsável pelo disparo final que destrói a primeira Estrela da Morte?",
        respostas: [
            "Luke Skywalker",
            "Wedge Antilles",
            "Biggs Darklighter"
        ],
        respostaCorreta: 0)
]
