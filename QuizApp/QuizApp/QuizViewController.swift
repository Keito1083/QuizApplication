//
//  QuizViewController.swift
//  Kimetsu
//
//  Created by 池田恵徒 on 2019/12/19.
//  Copyright © 2019 池田恵徒. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    @IBOutlet weak var easy: UIButton!
    @IBOutlet weak var normal: UIButton!
    @IBOutlet weak var hard: UIButton!
    
    static var QuestionLevel = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func EasyQuestionAction(_ sender: Any) {
        QuizViewController.QuestionLevel = 1
    }
    @IBAction func NormalQuestionAction(_ sender: Any) {
        QuizViewController.QuestionLevel = 2
    }
    @IBAction func HardQuestionAction(_ sender: Any) {
        QuizViewController.QuestionLevel = 3
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
