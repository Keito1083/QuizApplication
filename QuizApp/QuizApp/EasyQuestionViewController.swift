//
//  EasyQuestionViewController.swift
//  Kimetsu
//
//  Created by 池田恵徒 on 2019/12/20.
//  Copyright © 2019 池田恵徒. All rights reserved.
//

import UIKit

class EasyQuestionViewController: UIViewController {
    
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var ResultLabel: UILabel!
    @IBOutlet weak var EasyQuestionOne: UIButton!
    @IBOutlet weak var EasyQuestionTwo: UIButton!
    @IBOutlet weak var EasyQuestionThree: UIButton!
    @IBOutlet weak var EasyQuestionFour: UIButton!
    @IBOutlet weak var QuestionNumberLabel: UILabel!
    
    static var CorrectCount = 0
    var QuestionCount = 1
    
    var CorrectAnswer = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Question()
        ResultLabel.isHidden = true
        
        // Do any additional setup after loading the view.
    }
    
    func Question(){
        
        let QuestionNumber = Int.random(in: 1..<5)
        
        switch(QuestionNumber){
            
        case 1:
            QuestionLabel.text = "富岡義勇は何の呼吸の使い手か"
            EasyQuestionOne.setTitle("水の呼吸", for: .normal)
            EasyQuestionTwo.setTitle("雷の呼吸", for: .normal)
            EasyQuestionThree.setTitle("岩の呼吸", for: .normal)
            EasyQuestionFour.setTitle("獣の呼吸", for: .normal)
            CorrectAnswer = "1"
            
            break
            
        case 2:
            QuestionLabel.text = "竈門炭治郎の刀の色は何色か"
            EasyQuestionOne.setTitle("緑", for: .normal)
            EasyQuestionTwo.setTitle("青", for: .normal)
            EasyQuestionThree.setTitle("茶色", for: .normal)
            EasyQuestionFour.setTitle("黒", for: .normal)
            CorrectAnswer = "4"
            break
            
        case 3:
            QuestionLabel.text = "鬼殺隊の隊士が使う刀の名前は？"
            EasyQuestionOne.setTitle("鬼殺刀", for: .normal)
            EasyQuestionTwo.setTitle("日輪刀", for: .normal)
            EasyQuestionThree.setTitle("鬼滅刀", for: .normal)
            EasyQuestionFour.setTitle("滅殺刀", for: .normal)
            CorrectAnswer = "2"
            break
            
        case 4:
            QuestionLabel.text = "十二鬼月の「累」が与えられている数字はいくつか"
            EasyQuestionOne.setTitle("上弦の参", for: .normal)
            EasyQuestionTwo.setTitle("下弦の弐", for: .normal)
            EasyQuestionThree.setTitle("下弦の伍", for: .normal)
            EasyQuestionFour.setTitle("上弦の壱", for: .normal)
            CorrectAnswer = "3"
            break
            
        case 5:
            QuestionLabel.text = "鬼舞辻と対立している、医者をやっている鬼の女性の名前は？"
            EasyQuestionOne.setTitle("花子", for: .normal)
            EasyQuestionTwo.setTitle("ハナヲ", for: .normal)
            EasyQuestionThree.setTitle("禰豆子", for: .normal)
            EasyQuestionFour.setTitle("珠世", for: .normal)
            CorrectAnswer = "4"
            break
            
            
        default:
            
            break
        }
        
        ResultLabel.isHidden = true
        QuestionNumberLabel.text = "Q.\(QuestionCount)"
        
    }
    
    @IBAction func EasyQuestionOneAction(_ sender: Any) {
        if (CorrectAnswer == "1"){
            ResultLabel.text = "正解！"
            
            EasyQuestionViewController.CorrectCount += 1
            QuestionCount += 1
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                
                self.Question()
                
            }
            
        }else{
            ResultLabel.text = "不正解..."
            QuestionCount += 1
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                
                self.Question()
            }
            
        }
        if (QuestionCount == 4){
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                self.QuestionLabel.isHidden = true
                self.ResultLabel.isHidden = true
                self.EasyQuestionOne.isHidden = true
                self.EasyQuestionTwo.isHidden = true
                self.EasyQuestionThree.isHidden = true
                self.EasyQuestionFour.isHidden = true
                self.QuestionNumberLabel.isHidden = true
                
                self.performSegue(withIdentifier: "Result", sender: nil)
            }
            
        }
        ResultLabel.isHidden = false
        print(EasyQuestionViewController.CorrectCount)
    }
    
    @IBAction func EasyQuestionTwoAction(_ sender: Any) {
        if (CorrectAnswer == "2"){
            ResultLabel.text = "正解！"
            EasyQuestionViewController.CorrectCount += 1
            QuestionCount += 1
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                
                self.Question()
            }
            
        }else{
            ResultLabel.text = "不正解..."
            QuestionCount += 1
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                
                self.Question()
            }
            
        }
        ResultLabel.isHidden = false
        print(EasyQuestionViewController.CorrectCount)
        if (QuestionCount == 4){
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                self.QuestionLabel.isHidden = true
                self.ResultLabel.isHidden = true
                self.EasyQuestionOne.isHidden = true
                self.EasyQuestionTwo.isHidden = true
                self.EasyQuestionThree.isHidden = true
                self.EasyQuestionFour.isHidden = true
                self.QuestionNumberLabel.isHidden = true
                self.performSegue(withIdentifier: "Result", sender: nil)
            }
            
        }
    }
    
    @IBAction func EasyQuestionThreeAction(_ sender: Any) {
        if (CorrectAnswer == "3"){
            ResultLabel.text = "正解！"
            EasyQuestionViewController.CorrectCount += 1
            QuestionCount += 1
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                
                self.Question()
            }
            
        }else{
            ResultLabel.text = "不正解..."
            QuestionCount += 1
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                
                self.Question()
            }
            
        }
        ResultLabel.isHidden = false
        
        print(EasyQuestionViewController.CorrectCount)
        if (QuestionCount == 4){
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                self.QuestionLabel.isHidden = true
                self.ResultLabel.isHidden = true
                self.EasyQuestionOne.isHidden = true
                self.EasyQuestionTwo.isHidden = true
                self.EasyQuestionThree.isHidden = true
                self.EasyQuestionFour.isHidden = true
                self.QuestionNumberLabel.isHidden = true
                self.performSegue(withIdentifier: "Result", sender: nil)
            }
            
        }
    }
    
    @IBAction func EasyQuestionFourAction(_ sender: Any) {
        if (CorrectAnswer == "4"){
            ResultLabel.text = "正解！"
            EasyQuestionViewController.CorrectCount += 1
            QuestionCount += 1
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                
                self.Question()
            }
            
        }else{
            ResultLabel.text = "不正解..."
            QuestionCount += 1
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                
                self.Question()
            }
            
        }
        ResultLabel.isHidden = false
        print(EasyQuestionViewController.CorrectCount)
        if (QuestionCount == 4){
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                self.QuestionLabel.isHidden = true
                self.ResultLabel.isHidden = true
                self.EasyQuestionOne.isHidden = true
                self.EasyQuestionTwo.isHidden = true
                self.EasyQuestionThree.isHidden = true
                self.EasyQuestionFour.isHidden = true
                self.QuestionNumberLabel.isHidden = true
                self.performSegue(withIdentifier: "Result", sender: nil)
            }
            
        }
    }
    
    
    
    
    @IBAction func ChangeLevel(_ sender: Any) {
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
