//
//  ViewController.swift
//  WordList
//
//  Created by 田中音羽 on 2021/05/12.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func back(sender: UIStoryboardSegue){
       // self.dismiss(animated: true, completion: nil)
    }
    @IBAction func startButtonTaped(){
        let saveData = UserDefaults.standard
        if saveData.array(forKey: "WORD") != nil {
            performSegue(withIdentifier: "toQuestionView", sender: nil)
        }else{
            let alert = UIAlertController(
                title: "単語",
                message: "まずは単語一覧をタップして単語登録をしてください",
                preferredStyle: .alert
            )
            alert.addAction(UIAlertAction(
                title: "",
                style: .default,
                handler: nil
                ))
            self.present(alert, animated: true, completion: nil)
        }
        
    }


}

