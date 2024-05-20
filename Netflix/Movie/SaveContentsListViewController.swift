//
//  SaveContentsListViewController.swift
//  Netflix
//
//  Created by 장예지 on 5/16/24.
//

import UIKit

class SaveContentsListViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var subTitleLabel: UILabel!
    
    @IBOutlet var PostersImageView: UIImageView!
    
    @IBOutlet var settingButton: UIButton!
    @IBOutlet var saveContentListsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //navigation bar title 색 변경
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        view.backgroundColor = .black
        
        titleLabel.text = "'나만의 자동 저장' 기능"
        titleLabel.textColor = .white
        titleLabel.font = .systemFont(ofSize: 20, weight: .bold)
        titleLabel.textAlignment = .center
        
        subTitleLabel.text = "취향에 맞는 영화와 시리즈를 자동으로 저장해 드립니다.\n디바이스에 언제나 시청할 콘텐츠가 준비되니 지루할 틈이 없어요."
        subTitleLabel.numberOfLines = 0
        subTitleLabel.textColor = .lightGray
        subTitleLabel.font = .systemFont(ofSize: 13)
        subTitleLabel.textAlignment = .center
        
        PostersImageView.image = UIImage(named: "dummy")
        PostersImageView.contentMode = .scaleAspectFit
        
        settingButton.backgroundColor = .systemIndigo
        settingButton.setTitle("설정하기", for: .normal)
        settingButton.setTitleColor(.white, for: .normal)
        settingButton.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        settingButton.layer.cornerRadius = 5
        
        saveContentListsButton.backgroundColor = .white
        saveContentListsButton.setTitle("저장 가능한 콘텐츠 살펴보기", for: .normal)
        saveContentListsButton.setTitleColor(.black, for: .normal)
        saveContentListsButton.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        saveContentListsButton.layer.cornerRadius = 5
        
    }
    
}
