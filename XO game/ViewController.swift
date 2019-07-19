//
//  ViewController.swift
//  XO game
//
//  Created by shawky on 7/1/19.
//  Copyright © 2019 shawky. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

  
    var playerO = 0
    var playerX = 0
    
    var player = "O"
    
     var win1 = [Int]()
     var win2 = [Int]()
     var win3 = [Int]()
     var win4 = [Int]()
     var win5 = [Int]()
     var win6 = [Int]()
     var win7 = [Int]()
     var win8 = [Int]()
    
     var draw = [Int]()
    
    

    
    func oWins() {
        playerO += 1
       
        playerYscore.text = String(playerO)
        
        print("o wins")
        
        let alert = UIAlertController(title: "Winner", message: "O wins🎉🎉", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)

        
        
        win1.removeAll()
        win2.removeAll()
        win3.removeAll()
        win4.removeAll()
        win5.removeAll()
        win6.removeAll()
        win7.removeAll()
        win8.removeAll()
        draw.removeAll()
        
        button1Outlet.setImage(nil, for: .normal)
        button2Outlet.setImage(nil, for: .normal)
        button3Outlet.setImage(nil, for: .normal)
        button4Outlet.setImage(nil, for: .normal)
        button5Outlet.setImage(nil, for: .normal)
        button6Outlet.setImage(nil, for: .normal)
        button7Outlet.setImage(nil, for: .normal)
        button8Outlet.setImage(nil, for: .normal)
        button9Outlet.setImage(nil, for: .normal)
        
        
    }
    
    func xWins() {
        playerX += 1
         playerXscore.text = String(playerX)
        print("x wins")
        let alert = UIAlertController(title: "Winner", message: " X wins 🎉🎉", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
       
        
        win1.removeAll()
        win2.removeAll()
        win3.removeAll()
        win4.removeAll()
        win5.removeAll()
        win6.removeAll()
        win7.removeAll()
        win8.removeAll()
        draw.removeAll()
        
        button1Outlet.setImage(nil, for: .normal)
        button2Outlet.setImage(nil, for: .normal)
        button3Outlet.setImage(nil, for: .normal)
        button4Outlet.setImage(nil, for: .normal)
        button5Outlet.setImage(nil, for: .normal)
        button6Outlet.setImage(nil, for: .normal)
        button7Outlet.setImage(nil, for: .normal)
        button8Outlet.setImage(nil, for: .normal)
        button9Outlet.setImage(nil, for: .normal)
    }
    
    
    func gameIsDraw() {
        let alert = UIAlertController(title: "", message: "Game is draw 🤷🏻‍♂️", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
        win1.removeAll()
        win2.removeAll()
        win3.removeAll()
        win4.removeAll()
        win5.removeAll()
        win6.removeAll()
        win7.removeAll()
        win8.removeAll()
        draw.removeAll()
        
        button1Outlet.setImage(nil, for: .normal)
        button2Outlet.setImage(nil, for: .normal)
        button3Outlet.setImage(nil, for: .normal)
        button4Outlet.setImage(nil, for: .normal)
        button5Outlet.setImage(nil, for: .normal)
        button6Outlet.setImage(nil, for: .normal)
        button7Outlet.setImage(nil, for: .normal)
        button8Outlet.setImage(nil, for: .normal)
        button9Outlet.setImage(nil, for: .normal)
        
        
    }
    
    
    
    @IBOutlet weak var playerXscore: UILabel!
    @IBOutlet weak var playerYscore: UILabel!
    
    
    @IBOutlet weak var button1Outlet: UIButton!
    
    @IBAction func button1(_ sender: UIButton) {
      

        sender.setImage(UIImage(named: player), for: UIControl.State.normal)
    
      //  sender.isEnabled = false
        
        sender.showsTouchWhenHighlighted = true
        
        switch player {
        case "X":
            player = "O"
            win1.append(1)
            win4.append(1)
            win7.append(1)
        default:
            player = "X"
            win1.append(2)
            win4.append(2)
            win7.append(2)
            
        }
        switch [1,1,1] {
            
        case win1:
            
            xWins()
            
        case win2:
          xWins()
          
         
            
    
        case win3:
            xWins()
            
        
    
        case win4:
            xWins()
            
       
    
        case win5:
           xWins()
           
      
    
        case win6:
           xWins()
          
           
       
    
        case win7:
            xWins()
            
       
        case win8:
            xWins()
       
    
            
        default:
            draw.append(3)
           
            print ("no")
            
        }
        
        switch [2,2,2] {
            
        case win1:
             oWins()
       
    
        case win2:
             oWins()
       
    
        case win3:
             oWins()
       
    
        case win4:
             oWins()
       
    
        case win5:
             oWins()
       
    
        case win6:
             oWins()
       
    
        case win7:
             oWins()
       
    
        case win8:
             oWins()
       
    
            
        default:
             draw.append(3)
    
             print ("no")
            
        }
       
        switch 18 {
        case draw.count:
            gameIsDraw()
            print("game is draw")
        default:
        print("nothing")
        }
        
    }
    
    @IBOutlet weak var button2Outlet: UIButton!
    
    @IBAction func button2(_ sender: UIButton) {
        sender.setImage(UIImage(named: player), for: UIControl.State.normal)
        
        sender.showsTouchWhenHighlighted = true

        
        switch player {
        case "X":
            player = "O"
            win5.append(1)
            win1.append(1)
           
        default:
            player = "X"
            win5.append(2)
            win1.append(2)
            
        }
        switch [1,1,1] {
            
        case win1:
            xWins()
            
       
    
        case win2:
           xWins()
            
       
    
        case win3:
            xWins()
            
       
    
        case win4:
            xWins()
            
       
    
        case win5:
            xWins()
            
       
    
        case win6:
            xWins()
            
       
    
        case win7:
            xWins()
            
       
    
        case win8:
            xWins()
            
       
    
            
        default:
             draw.append(3)
            print ("no")
            
        }
        
        switch [2,2,2] {
            
        case win1:
             oWins()
       
    
        case win2:
             oWins()
       
    
        case win3:
             oWins()
       
    
        case win4:
             oWins()
       
    
        case win5:
             oWins()
       
    
        case win6:
             oWins()
       
    
        case win7:
             oWins()
       
    
        case win8:
             oWins()
       
    
            
        default:
            draw.append(3)
            print ("no")
            
        }
        switch 18 {
        case draw.count:
           gameIsDraw()
            print("game is draw")
        default:
            print("nothing")
        }
    }
    
    
   
    @IBOutlet weak var button3Outlet: UIButton!
    @IBAction func button3(_ sender: UIButton) {
        sender.setImage(UIImage(named: player), for: UIControl.State.normal)
       
    
        sender.showsTouchWhenHighlighted = true
        
        switch player {
        case "X":
            player = "O"
            
            win8.append(1)
            win6.append(1)
            win1.append(1)
        default:
            player = "X"
            
            win8.append(2)
            win6.append(2)
            win1.append(2)
        }
        switch [1,1,1] {
            
        case win1:
            xWins()
            
       
    
        case win2:
            xWins()
            
       
    
        case win3:
            xWins()
            
       
    
        case win4:
            xWins()
            
       
    
        case win5:
            xWins()
            
       
    
        case win6:
            xWins()
            
       
    
        case win7:
            xWins()
            
       
    
        case win8:
            xWins()
            
       
    
            
        default:
             draw.append(3)
            print ("no")
            
        }
        
        switch [2,2,2] {
            
        case win1:
             oWins()
       
    
        case win2:
             oWins()
       
    
        case win3:
             oWins()
       
    
        case win4:
             oWins()
       
    
        case win5:
             oWins()
       
    
        case win6:
             oWins()
       
    
        case win7:
             oWins()
       
    
        case win8:
             oWins()
       
    
            
        default:
             draw.append(3)
            print ("no")
            
        }
        switch 18 {
        
        case draw.count:
            gameIsDraw()
            print("game is draw")
        default:
            print("nothing")
        }
    }
    
 
    @IBOutlet weak var button4Outlet: UIButton!
    
    @IBAction func button4(_ sender: UIButton) {
        sender.setImage(UIImage(named: player), for: UIControl.State.normal)
        
        sender.showsTouchWhenHighlighted = true
        
        switch player {
        case "X":
            player = "O"
            win2.append(1)
            win4.append(1)
            
        default:
            player = "X"
            win2.append(2)
            win4.append(2)
        }
        switch [1,1,1] {
            
        case win1:
            xWins()
            
       
    
        case win2:
            xWins()
            
       
    
        case win3:
            xWins()
            
       
    
        case win4:
            xWins()
            
       
    
        case win5:
            xWins()
            
       
    
        case win6:
            xWins()
            
       
    
        case win7:
            xWins()
            
       
    
        case win8:
            xWins()
            
       
    
            
        default:
            draw.append(3)
            print ("no")
            
        }
        
        switch [2,2,2] {
            
        case win1:
             oWins()
       
    
        case win2:
             oWins()
       
    
        case win3:
             oWins()
       
    
        case win4:
             oWins()
       
    
        case win5:
             oWins()
       
    
        case win6:
             oWins()
       
    
        case win7:
             oWins()
       
    
        case win8:
             oWins()
       
    
            
        default:
            draw.append(3)
            print ("no")
            
        }
        switch 18 {
        case draw.count:
           gameIsDraw()
            print("game is draw")
        default:
            print("nothing")
        }
    }
    
    @IBOutlet weak var button5Outlet: UIButton!
    @IBAction func button5(_ sender: UIButton) {
        sender.setImage(UIImage(named: player), for: UIControl.State.normal)
      
        sender.showsTouchWhenHighlighted = true
        
        
        switch player {
        case "X":
            player = "O"
            
            win7.append(1)
            win8.append(1)
            win5.append(1)
            win2.append(1)
            
        default:
            player = "X"
            
            win7.append(2)
            win8.append(2)
            win5.append(2)
            win2.append(2)
            
        }
        switch [1,1,1] {
            
        case win1:
            xWins()
            
       
    
        case win2:
            xWins()
            
       
    
        case win3:
            xWins()
            
       
    
        case win4:
            xWins()
            
            
       
    
        case win5:
            xWins()
            
       
    
        case win6:
            xWins()
            
       
    
        case win7:
            xWins()
            
       
    
        case win8:
            xWins()
            
       
    
            
        default:
             draw.append(3)
            print ("no")
            
        }
        
        switch [2,2,2] {
            
        case win1:
             oWins()
       
    
        case win2:
             oWins()
       
    
        case win3:
             oWins()
       
    
        case win4:
             oWins()
       
    
        case win5:
             oWins()
       
    
        case win6:
             oWins()
       
    
        case win7:
             oWins()
       
    
        case win8:
             oWins()
       
    
            
        default:
             draw.append(3)
            print ("no")
            
        }
        switch 18 {
        
        case draw.count:
            gameIsDraw()
            print("game is draw")
        default:
            print("nothing")
        }
    }
    
    @IBOutlet weak var button6Outlet: UIButton!
    @IBAction func button6(_ sender: UIButton) {
        sender.setImage(UIImage(named: player), for: UIControl.State.normal)
       
        sender.showsTouchWhenHighlighted = true
        
        switch player {
        case "X":
            player = "O"
            
            win6.append(1)
            win2.append(1)
            
        default:
            player = "X"
            
            win6.append(2)
            win2.append(2)
        }
        switch [1,1,1] {
            
        case win1:
            xWins()
            
       
    
        case win2:
            xWins()
            
       
    
        case win3:
            xWins()
            
       
    
        case win4:
            xWins()
            
       
    
        case win5:
            xWins()
            
       
    
        case win6:
            xWins()
            
       
    
        case win7:
            xWins()
            
       
    
        case win8:
            xWins()
            
       
    
            
        default:
            draw.append(3)
            print ("no")
            
        }
        
        switch [2,2,2] {
            
        case win1:
             oWins()
       
    
        case win2:
             oWins()
       
    
        case win3:
             oWins()
       
    
        case win4:
             oWins()
       
    
        case win5:
             oWins()
       
    
        case win6:
             oWins()
       
    
        case win7:
             oWins()
       
    
        case win8:
             oWins()
       
    
            
        default:
            draw.append(3)
            print ("no")
            
        }
        switch 18 {
        case draw.count:
          gameIsDraw()
            print("game is draw")
        default:
            print("nothing")
        }
    }
    
    @IBOutlet weak var button7Outlet: UIButton!
    @IBAction func button7(_ sender: UIButton) {
        sender.setImage(UIImage(named: player), for: UIControl.State.normal)
      
        sender.showsTouchWhenHighlighted = true
        
        switch player {
        case "X":
            player = "O"
            win8.append(1)
            win4.append(1)
            win3.append(1)
            
        default:
            player = "X"
            win8.append(2)
            win4.append(2)
            win3.append(2)
        }
        switch [1,1,1] {
            
        case win1:
            xWins()
            
       
    
        case win2:
            xWins()
            
       
    
        case win3:
            xWins()
            
       
    
        case win4:            xWins()
            
       
    
        case win5:
            xWins()
            
       
    
        case win6:
            xWins()
            
       
    
        case win7:
            xWins()
            
       
    
        case win8:
            xWins()
            
       
    
            
        default:
            draw.append(3)
            print ("no")
            
        }
        
        switch [2,2,2] {
            
        case win1:
             oWins()
       
    
        case win2:
             oWins()
       
    
        case win3:
             oWins()
       
    
        case win4:
             oWins()
       
    
        case win5:
             oWins()
       
    
        case win6:
             oWins()
       
    
        case win7:
             oWins()
       
    
        case win8:
             oWins()
       
    
            
        default:
            draw.append(3)
            print ("no")
            
        }
        switch 18 {
        case draw.count:
          gameIsDraw()
            print("game is draw")
        default:
            print("nothing")
        }
    }
    
    
    @IBOutlet weak var button8Outlet: UIButton!
    @IBAction func button8(_ sender: UIButton) {
        sender.setImage(UIImage(named: player), for: UIControl.State.normal)
        sender.showsTouchWhenHighlighted = true
        
        switch player {
        case "X":
            player = "O"
            win3.append(1)
            win5.append(1)
            
        default:
            player = "X"
            win3.append(2)
            win5.append(2)
        }
        switch [1,1,1] {
            
        case win1:
            xWins()
            
       
    
        case win2:
            xWins()
           
       
    
        case win3:
            xWins()
            
       
    
        case win4:
            xWins()
            
       
    
        case win5:
            xWins()
            
       
    
        case win6:
            xWins()
            
       
    
        case win7:
            xWins()
            
       
    
        case win8:
            xWins()
            
       
    
            
        default:
            draw.append(3)
            print ("no")
            
        }
        
        switch [2,2,2] {
            
        case win1:
             oWins()
       
    
        case win2:
             oWins()
       
    
        case win3:
             oWins()
       
    
        case win4:
             oWins()
       
    
        case win5:
             oWins()
       
    
        case win6:
             oWins()
       
    
        case win7:
             oWins()
       
    
        case win8:
             oWins()
       
    
            
        default:
            draw.append(3)
            print ("no")
            
        }
        switch 18 {
        case draw.count:
           gameIsDraw()
            print("game is draw")
        default:
            print("nothing")
        }
    }
    
   
    @IBOutlet weak var button9Outlet: UIButton!
    @IBAction func button9(_ sender: UIButton) {
        sender.setImage(UIImage(named: player), for: UIControl.State.normal)
       
        sender.showsTouchWhenHighlighted = true
        
        switch player {
        
        case "X":
            player = "O"
            win7.append(1)
            win6.append(1)
            win3.append(1)
        default:
            player = "X"
            win7.append(2)
            win6.append(2)
            win3.append(2)
        }
        
        switch [1,1,1] {
       
        case win1:
            xWins()
        case win2:
            xWins()

    
        case win3:
            xWins()
            
       
    
        case win4:
            xWins()
            
       
    
        case win5:
            xWins()
            
       
    
        case win6:
            xWins()
            
       
    
        case win7:
            xWins()
            
       
    
        case win8:
            xWins()
            
       
    
          
        default:
            draw.append(3)
            print ("no")
    
        }
        
        switch [2,2,2] {
            
        case win1:
             oWins()
       
    
        case win2:
             oWins()
       
    
        case win3:
             oWins()
       
    
        case win4:
             oWins()
       
    
        case win5:
             oWins()
       
    
        case win6:
             oWins()
       
    
        case win7:
             oWins()
       
    
        case win8:
             oWins()
       
    
            
        default:
             draw.append(3)
            print ("no")
            
        }
        
        switch 18 {
        case draw.count:
           gameIsDraw()
            print("game is draw")
        default:
            print("nothing")
        }
      
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        }

    
}
    

    
    

