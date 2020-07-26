//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by user on 2020/07/25.
//  Copyright © 2020 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var nextButton: UIButton!

    //TextFieldのテキストの初期化
    private func initInputText() {
        inputTextField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initInputText()
        updateButtonState()
        inputTextField.delegate = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let resltViewController:ResultViewController = segue.destination as! ResultViewController
        resltViewController.name = inputTextField!.text!
    }

    private func updateButtonState() {
        //入力された余計な空白を削除
        let inputString = inputTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        //入力文字列が空ならNextButton非活性
        if inputString!.isEmpty {
            nextButton.isEnabled = false
        } else {
            nextButton.isEnabled = true
        }
    }
    //編集中に空欄チェックを行う
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        updateButtonState()
        return true
    }
}

