//
//  ResultViewController.swift
//  Gacha
//
//  Created by Koutaro Matsushita on 2021/08/19.
//

import UIKit

class ResultViewController: UIViewController {

    var number: Int!
    
    @IBOutlet var backgroudImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        number = Int.random(in: 0...9)
        if number == 9 {
            monsterImageView.image = UIImage(named: "monster010")
            backgroudImageView.image = UIImage(named: "bg_gold")
        }else if number > 7{
            monsterImageView.image = UIImage(named: "monster006")
            backgroudImageView.image = UIImage(named: "bg_red")
        }else{
            monsterImageView.image = UIImage(named: "monster003")
            backgroudImageView.image = UIImage(named: "bg_blue")
        }
    }
    

    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
    }

}
