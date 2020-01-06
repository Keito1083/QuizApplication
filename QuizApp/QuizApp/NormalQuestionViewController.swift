//
//  NormalQuestionViewController.swift
//  Kimetsu
//
//  Created by 池田恵徒 on 2019/12/20.
//  Copyright © 2019 池田恵徒. All rights reserved.
//

import UIKit

class NormalQuestionViewController: UIViewController {

    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var ResultLabel: UILabel!
    @IBOutlet weak var NormalQuestionOne: UIButton!
    @IBOutlet weak var NormalQuestionTwo: UIButton!
    @IBOutlet weak var NormalQuestionThree: UIButton!
    @IBOutlet weak var NormalQuestionFour: UIButton!
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
            QuestionLabel.text = "すべての呼吸のは起源は日の呼吸ですが「獣の呼吸」はどの呼吸から派生しているか"
            NormalQuestionOne.setTitle("水の呼吸", for: .normal)
            NormalQuestionTwo.setTitle("炎の呼吸", for: .normal)
            NormalQuestionThree.setTitle("岩の呼吸", for: .normal)
            NormalQuestionFour.setTitle("風の呼吸", for: .normal)
            CorrectAnswer = "4"
            
            break
            
        case 2:
            QuestionLabel.text = "藤襲山の最終戦別での合格条件はなにか"
            NormalQuestionOne.setTitle("鬼を1体狩る", for: .normal)
            NormalQuestionTwo.setTitle("鬼を3体狩る", for: .normal)
            NormalQuestionThree.setTitle("7日間生き残る", for: .normal)
            NormalQuestionFour.setTitle("最終日に先輩と試合して一本取る", for: .normal)
            CorrectAnswer = "3"
            break
            
        case 3:
            QuestionLabel.text = "鬼殺隊の戦闘後の処理などを担当する役割を何というか"
            NormalQuestionOne.setTitle("隠", for: .normal)
            NormalQuestionTwo.setTitle("忍", for: .normal)
            NormalQuestionThree.setTitle("霞", for: .normal)
            NormalQuestionFour.setTitle("密", for: .normal)
            CorrectAnswer = "1"
            break
            
        case 4:
            QuestionLabel.text = "元下弦の鬼で、鼓を持った鬼の名前は何か"
            NormalQuestionOne.setTitle("半天狗", for: .normal)
            NormalQuestionTwo.setTitle("響凱", for: .normal)
            NormalQuestionThree.setTitle("轟健", for: .normal)
            NormalQuestionFour.setTitle("骸殻", for: .normal)
            CorrectAnswer = "2"
            break
            
        case 5:
            QuestionLabel.text = "禰豆子の血鬼術の名前を何というか"
            NormalQuestionOne.setTitle("炎爆", for: .normal)
            NormalQuestionTwo.setTitle("爆血", for: .normal)
            NormalQuestionThree.setTitle("灼血", for: .normal)
            NormalQuestionFour.setTitle("豪炎", for: .normal)
            CorrectAnswer = "2"
            break
            
            
        default:
            
            break
        }
        
        ResultLabel.isHidden = true
        QuestionNumberLabel.text = "Q.\(QuestionCount)"
    }
    
    
    
    
    
    @IBAction func NormalQuestionOneAction(_ sender: Any) {
        if (CorrectAnswer == "1"){
            ResultLabel.text = "正解！"
            
            NormalQuestionViewController.CorrectCount += 1
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
                       self.NormalQuestionOne.isHidden = true
                       self.NormalQuestionTwo.isHidden = true
                       self.NormalQuestionThree.isHidden = true
                       self.NormalQuestionFour.isHidden = true
                       self.QuestionNumberLabel.isHidden = true
                       
                       self.performSegue(withIdentifier: "Result", sender: nil)
                   }
                   
               }
        ResultLabel.isHidden = false
        print(NormalQuestionViewController.CorrectCount)
    }
    @IBAction func NormalQuestionTwoAction(_ sender: Any) {
        if (CorrectAnswer == "2"){
            ResultLabel.text = "正解！"
            NormalQuestionViewController.CorrectCount += 1
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
                       self.NormalQuestionOne.isHidden = true
                       self.NormalQuestionTwo.isHidden = true
                       self.NormalQuestionThree.isHidden = true
                       self.NormalQuestionFour.isHidden = true
                       self.QuestionNumberLabel.isHidden = true
                       
                       self.performSegue(withIdentifier: "Result", sender: nil)
                   }
                   
               }
        ResultLabel.isHidden = false
        print(NormalQuestionViewController.CorrectCount)
    }
    @IBAction func NormalQuestionThreeAction(_ sender: Any) {
        if (CorrectAnswer == "3"){
            ResultLabel.text = "正解！"
            NormalQuestionViewController.CorrectCount += 1
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
                       self.NormalQuestionOne.isHidden = true
                       self.NormalQuestionTwo.isHidden = true
                       self.NormalQuestionThree.isHidden = true
                       self.NormalQuestionFour.isHidden = true
                       self.QuestionNumberLabel.isHidden = true
                       
                       self.performSegue(withIdentifier: "Result", sender: nil)
                   }
                   
               }
        ResultLabel.isHidden = false
        print(NormalQuestionViewController.CorrectCount)
    }
    @IBAction func NormalQuestionFourAction(_ sender: Any) {
        if (CorrectAnswer == "4"){
            ResultLabel.text = "正解！"
            NormalQuestionViewController.CorrectCount += 1
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
                       self.NormalQuestionOne.isHidden = true
                       self.NormalQuestionTwo.isHidden = true
                       self.NormalQuestionThree.isHidden = true
                       self.NormalQuestionFour.isHidden = true
                       self.QuestionNumberLabel.isHidden = true
                       
                       self.performSegue(withIdentifier: "Result", sender: nil)
                   }
                   
               }
        ResultLabel.isHidden = false
        print(NormalQuestionViewController.CorrectCount)
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
