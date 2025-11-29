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
        setBackgroundColor()
    }

    func setBackgroundColor() {
        startButton.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
    }

}

