//
//  DesempenhoViewController.swift
//  iQuiz
//
//  Created by Alex Souza on 01/12/25.
//

import UIKit

class DesempenhoViewController: UIViewController {
    var pontuacao: Int?

    @IBOutlet weak var acertosLabel: UILabel!
    
    @IBOutlet weak var percentualLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.hidesBackButton = true
        configurarDesempenho()
    }
    
    func configurarDesempenho() {
        guard let pontuacao = pontuacao else { return }

        acertosLabel.text = "Você acertou \(pontuacao) de \(listaDeQuestoes.count)"
        
        let percentual = (pontuacao * 100) / listaDeQuestoes.count
        percentualLabel.text = "Percentual final: \(percentual)%"
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
