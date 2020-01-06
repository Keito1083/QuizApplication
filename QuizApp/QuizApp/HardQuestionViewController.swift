//
//  HardQuestionViewController.swift
//  Kimetsu
//
//  Created by 池田恵徒 on 2019/12/20.
//  Copyright © 2019 池田恵徒. All rights reserved.
//

import UIKit

class HardQuestionViewController: UIViewController {
    
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var ResultLabel: UILabel!
    @IBOutlet weak var HardQuestionOne: UIButton!
    @IBOutlet weak var HardQuestionTwo: UIButton!
    @IBOutlet weak var HardQuestionThree: UIButton!
    @IBOutlet weak var HardQuestionFour: UIButton!
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
            QuestionLabel.text = "無限列車編で魘夢は何人の人間を喰うことができた？"
            HardQuestionOne.setTitle("0人", for: .normal)
            HardQuestionTwo.setTitle("3人", for: .normal)
            HardQuestionThree.setTitle("10人", for: .normal)
            HardQuestionFour.setTitle("50人", for: .normal)
            CorrectAnswer = "1"
            
            break
            
        case 2:
            QuestionLabel.text = "元忍の音柱・宇髄天元の兄弟は何人いた？"
            HardQuestionOne.setTitle("6人", for: .normal)
            HardQuestionTwo.setTitle("7人", for: .normal)
            HardQuestionThree.setTitle("8人", for: .normal)
            HardQuestionFour.setTitle("9人", for: .normal)
            CorrectAnswer = "4"
            break
            
        case 3:
            QuestionLabel.text = "物語開始時の竈門炭治郎の年齢は？"
            HardQuestionOne.setTitle("13歳", for: .normal)
            HardQuestionTwo.setTitle("14歳", for: .normal)
            HardQuestionThree.setTitle("15歳", for: .normal)
            HardQuestionFour.setTitle("16歳", for: .normal)
            CorrectAnswer = "1"
            break
            
        case 4:
            QuestionLabel.text = "水の呼吸の派生ではないものはどれか"
            HardQuestionOne.setTitle("蛇の呼吸", for: .normal)
            HardQuestionTwo.setTitle("音の呼吸", for: .normal)
            HardQuestionThree.setTitle("花の呼吸", for: .normal)
            HardQuestionFour.setTitle("蟲の呼吸", for: .normal)
            CorrectAnswer = "2"
            break
            
        case 5:
            QuestionLabel.text = "「上弦の弐」の数字を与えられている童磨。では、鬼舞辻無惨から彼に対しての評価のうち適切なものはどれか"
            HardQuestionOne.setTitle("お気に入り", for: .normal)
            HardQuestionTwo.setTitle("好きでも嫌いでもない", for: .normal)
            HardQuestionThree.setTitle("あんまり好きじゃない", for: .normal)
            HardQuestionFour.setTitle("無関心", for: .normal)
            CorrectAnswer = "3"
            break
            
            
        default:
            
            break
        }
        
        ResultLabel.isHidden = true
        QuestionNumberLabel.text = "Q.\(QuestionCount)"
        
    }
    
    
    
    
    
    @IBAction func HardQuestionOneAction(_ sender: Any) {
        if (CorrectAnswer == "1"){
            ResultLabel.text = "正解！"
            HardQuestionViewController.CorrectCount += 1
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
                self.HardQuestionOne.isHidden = true
                self.HardQuestionTwo.isHidden = true
                self.HardQuestionThree.isHidden = true
                self.HardQuestionFour.isHidden = true
                self.QuestionNumberLabel.isHidden = true
                
                self.performSegue(withIdentifier: "Result", sender: nil)
            }
            
        }
        ResultLabel.isHidden = false
        print(HardQuestionViewController.CorrectCount)
    }
    
    @IBAction func HardQuestionTwoAction(_ sender: Any) {
        if (CorrectAnswer == "2"){
            ResultLabel.text = "正解！"
            HardQuestionViewController.CorrectCount += 1
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
        print(HardQuestionViewController.CorrectCount)
        if (QuestionCount == 4){
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                self.QuestionLabel.isHidden = true
                self.ResultLabel.isHidden = true
                self.HardQuestionOne.isHidden = true
                self.HardQuestionTwo.isHidden = true
                self.HardQuestionThree.isHidden = true
                self.HardQuestionFour.isHidden = true
                self.QuestionNumberLabel.isHidden = true
                self.performSegue(withIdentifier: "Result", sender: nil)
            }
            
        }
    }
    
    @IBAction func HardQuestionThreeAction(_ sender: Any) {
        if (CorrectAnswer == "3"){
            ResultLabel.text = "正解！"
            HardQuestionViewController.CorrectCount += 1
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
        print(HardQuestionViewController.CorrectCount)
        if (QuestionCount == 4){
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                self.QuestionLabel.isHidden = true
                self.ResultLabel.isHidden = true
                self.HardQuestionOne.isHidden = true
                self.HardQuestionTwo.isHidden = true
                self.HardQuestionThree.isHidden = true
                self.HardQuestionFour.isHidden = true
                self.QuestionNumberLabel.isHidden = true
                
                self.performSegue(withIdentifier: "Result", sender: nil)
            }
            
        }
    }
    
    @IBAction func HardQuestionFourAction(_ sender: Any) {
        if (CorrectAnswer == "4"){
            ResultLabel.text = "正解！"
            HardQuestionViewController.CorrectCount += 1
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
        print(HardQuestionViewController.CorrectCount)
        
        if (QuestionCount == 4){
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                self.QuestionLabel.isHidden = true
                self.ResultLabel.isHidden = true
                self.HardQuestionOne.isHidden = true
                self.HardQuestionTwo.isHidden = true
                self.HardQuestionThree.isHidden = true
                self.HardQuestionFour.isHidden = true
                self.QuestionNumberLabel.isHidden = true
                
                self.performSegue(withIdentifier: "Result", sender: nil)
            }
            
        }
    }
    
    
    
    @IBAction func ChangeLevelAction(_ sender: Any) {
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
