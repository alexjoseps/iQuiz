//
//  questionViewController.swift
//  iQuiz
//
//  Created by Alex Souza on 28/11/25.
//

import UIKit

class QuestionViewController: UIViewController {
    var pontuacao = 0
    var questaoAtual = 0

    @IBOutlet weak var tituloQuestao: UILabel!
    @IBOutlet var respostasQuestao: [UIButton]!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        configuraTela()
        configuraQuestao()
    }

    func configuraTela() {
        navigationItem.hidesBackButton = true
    }

    @objc func configuraQuestao() {
        tituloQuestao.numberOfLines = 0
        tituloQuestao.textAlignment = .center
        tituloQuestao.text = listaDeQuestoes[questaoAtual].titulo

        configuraRespostas()
    }

    func configuraRespostas() {
        for resposta in respostasQuestao {
            resposta.setTitle(
                listaDeQuestoes[questaoAtual].respostas[resposta.tag],
                for: .normal
            )
            resposta.backgroundColor = UIColor.corDeFundoRoxoClaraIQuiz
        }
    }
    
    @IBAction func botaoRespostaPressionado(_ sender: UIButton) {
        if acertouResposta(sender.tag) {
            pontuacao += 1
            sender.backgroundColor = UIColor.corDeFundoVerdeIQuiz
        } else {
            sender.backgroundColor = UIColor.corDeFundoVermelhaIQuiz
        }

        if questaoAtual < listaDeQuestoes.count - 1 {
            questaoAtual += 1
            Timer.scheduledTimer(
                timeInterval: 0.6,
                target: self,
                selector: #selector(configuraQuestao),
                userInfo: nil,
                repeats: false
            )
        } else {
            navegaParaTelaDesempenho()
        }
    }
    
    func acertouResposta(_ opcaoEscolhida: Int) -> Bool {
        return listaDeQuestoes[questaoAtual].respostaCorreta == opcaoEscolhida
    }

    func navegaParaTelaDesempenho() {
        performSegue(withIdentifier: "irParaTelaDesempenho", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let desempenhoVC = segue.destination as? DesempenhoViewController
        else { return }
        desempenhoVC.pontuacao = self.pontuacao
    }

    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
