//
//  questionViewController.swift
//  iQuiz
//
//  Created by Alex Souza on 28/11/25.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var tituloQuestao: UILabel!

    @IBAction func botaoRespostaPressionado(_ sender: UIButton) {
        print(sender.tag)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.hidesBackButton = true
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
