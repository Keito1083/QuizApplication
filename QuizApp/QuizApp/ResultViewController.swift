//
//  ResultViewController.swift
//  Kimetsu
//
//  Created by 池田恵徒 on 2019/12/31.
//  Copyright © 2019 池田恵徒. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var ResultLabel: UILabel!
    @IBOutlet weak var ReturnTop: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (QuizViewController.QuestionLevel == 1){
            ResultLabel.text = "3問中\(EasyQuestionViewController.CorrectCount)問正解！"
        }else if (QuizViewController.QuestionLevel == 2){
            ResultLabel.text = "3問中\(NormalQuestionViewController.CorrectCount)問正解！"
        }else{
            ResultLabel.text = "3問中\(HardQuestionViewController.CorrectCount)問正解！"
        }
    
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ReturnTopAction(_ sender: Any) {
        EasyQuestionViewController.CorrectCount = 0
        NormalQuestionViewController.CorrectCount = 0
        HardQuestionViewController.CorrectCount = 0
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
