//
//  ViewController.swift
//  iQuiz
//
//  Created by Alex Souza on 27/11/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    
    @IBAction func startButtonPressed(_ sender: Any) {
        print("Botão iniciar pressionado!")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationItem.hidesBackButton = true

        setBackgroundColor()
    }

    func setBackgroundColor() {
        startButton.backgroundColor = UIColor.corDeFundoRoxoClaraIQuiz
    }

}

