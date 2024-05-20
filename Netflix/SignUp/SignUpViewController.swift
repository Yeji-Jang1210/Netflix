//
//  SignUpViewController.swift
//  Netflix
//
//  Created by 장예지 on 5/16/24.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!

    @IBOutlet var idTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var nicknameTextField: UITextField!
    @IBOutlet var locateTextField: UITextField!
    @IBOutlet var recommendTextField: UITextField!
    
    @IBOutlet var signupButton: UIButton!
    
    @IBOutlet var addInfoLabel: UILabel!
    @IBOutlet var addInfoSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //navigation bar title 색 변경
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        
        //background color
        view.backgroundColor = .black
        
        //title
        titleLabel.textColor = .red
        titleLabel.text = "JACKFLIX"
        titleLabel.textAlignment = .center
        titleLabel.font = .systemFont(ofSize: 40, weight: .heavy)
        
        //setTextFields - arrayType
//        let placeholders: [String] = [
//        "이메일 주소 또는 전화번호", "비밀번호", "닉네임", "위치", "추천 코드 입력"
//        ]
//        let textFieldGroup = [idTextField, passwordTextField, nicknameTextField, locateTextField, recommendTextField]
//        for index in textFieldGroup.indices {
//            setSignUpInfoButtonUI(textFieldGroup[index], placeholders[index])
//        }
//        
        
        //setTextFields - Dictionary Type
        let textFieldDict = [idTextField:"이메일 주소 또는 전화번호", passwordTextField:"비밀번호", nicknameTextField: "닉네임", locateTextField:"위치", recommendTextField:"추천 코드 입력"]
        
        for textField in textFieldDict.keys {
            if let title = textFieldDict[textField] {
                setSignUpInfoButtonUI(textField, title)
            }
        }
        
        signupButton.backgroundColor = .white
        signupButton.setTitle("회원가입", for: .normal)
        signupButton.setTitleColor(.black, for: .normal)
        signupButton.layer.cornerRadius = 15
        
        
        //그 외
        addInfoLabel.textAlignment = .left
        addInfoLabel.text = "추가 정보 입력"
        addInfoLabel.textColor = .white
        addInfoSwitch.onTintColor = .red
    }
    
    func setSignUpInfoButtonUI(_ textField: UITextField?, _ placeholder: String){
        textField?.textAlignment = .center
        textField?.backgroundColor = .darkGray
        textField?.layer.cornerRadius = 10
        textField?.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
    }

}



