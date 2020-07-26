//
//  ResultViewController.swift
//  SecondKadaiApp
//
//  Created by user on 2020/07/25.
//  Copyright © 2020 user. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!

    var name: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        let result = name
        resultLabel.text = "こんにちは、\(result)さん"
    }

    //戻るボタン遷移
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
