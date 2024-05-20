//
//  SearchViewController.swift
//  Netflix
//
//  Created by 장예지 on 5/16/24.
//

import UIKit

class SearchViewController: UIViewController {

    
    @IBOutlet var searchTextFieldView: UIView!
    @IBOutlet var searchTextFieldImage: UIImageView!
    @IBOutlet var searchTextField: UITextField!

    @IBOutlet var contentButtons: [UIButton]!
    @IBOutlet var searchResultTitleLabel: UILabel!
    @IBOutlet var searchResultSubTitleLabel: UILabel!
    
    let images = ["blue", "pink", "turquoise"]
    let buttonTitles = ["공개 예정", "모두의 인기 콘텐츠", "TOP 10 시리즈"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        //navigation bar title 색 변경
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        
        //plain < iOS15+
        //default < legacy
        //즉, default 스타일을 다루는 버튼 코드와
        //plain 스타일을 다루는 버튼 코드가 다름
        
        for index in contentButtons.indices {
            
            let button = contentButtons[index]
            
            if button.tag == 0 {
                button.backgroundColor = .white
                button.layer.cornerRadius = 18
                //버튼의 이미지가 파랗게 나올경우 이미지 랜더링 모드를 파악하기!
                //UIImage(named: "blue")?.withRenderingMode(.alwaysOriginal)
                
                button.setImage(UIImage(named: images[index]), for: .normal)
                button.setTitle(buttonTitles[index], for: .normal)
                //button이 plain style이면 적용이 되지 않음
                button.titleLabel?.font = .boldSystemFont(ofSize: 10)
                button.setTitleColor(.black, for: .normal)
            } else {
                button.backgroundColor = .black
                button.layer.cornerRadius = 18
                button.setImage(UIImage(named: images[index]), for: .normal)
                button.setTitle(buttonTitles[index], for: .normal)
                button.titleLabel?.font = .boldSystemFont(ofSize: 10)
                button.setTitleColor(.white, for: .normal)
            }
        
            
        }
        
        searchTextFieldView.backgroundColor = .darkGray
        searchTextFieldView.layer.cornerRadius = 5
        
        searchTextFieldImage.image = UIImage(systemName: "magnifyingglass")
        searchTextFieldImage.contentMode = .scaleAspectFit
        searchTextFieldImage.tintColor = .lightGray
        
        //텍스트필드의 커서 색도 변경 됨
        searchTextField.tintColor = .lightGray
        searchTextField.textColor = .white
        searchTextField.attributedPlaceholder = NSAttributedString(string: "게임, 시리즈, 영화를 검색하세요...", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        searchTextField.backgroundColor = .darkGray
        searchTextField.borderStyle = .none
        
        searchResultTitleLabel.text = "이런! 찾으시는 작품이 없습니다."
        searchResultTitleLabel.font = .systemFont(ofSize: 20, weight: .bold)
        searchResultTitleLabel.textColor = .white
        searchResultTitleLabel.textAlignment = .center
        
        searchResultSubTitleLabel.text = "다른 영화, 시리즈, 배우, 감독 또는 장르를 검색해 보세요."
        searchResultSubTitleLabel.font = .systemFont(ofSize: 14)
        searchResultSubTitleLabel.textColor = .lightGray
        searchResultSubTitleLabel.textAlignment = .center
        
    }
    
    @IBAction func contentButtonTapped(_ sender: UIButton) {
        for index in contentButtons.indices {
            let button = contentButtons[index]
            
            if index == sender.tag {
                button.backgroundColor = .white
                button.setTitleColor(.black, for: .normal)
            } else {
                button.backgroundColor = .none
                button.setTitleColor(.white, for: .normal)
            }
        }
        
        switch sender.tag {
        case 0:
            searchResultTitleLabel.text = "공개 예정!"
            searchResultSubTitleLabel.text = "공개 예정입니다아아아"
        case 1:
            searchResultTitleLabel.text = "모두의 인키콘텐츠!"
            searchResultSubTitleLabel.text = "모두의 인기콘텐츠 입니다아아아아"
        case 2:
            searchResultTitleLabel.text = "TOP 10 시리즈!"
            searchResultSubTitleLabel.text = "탑텐 시리즈 입니다아아아앙"
        default:
            searchResultTitleLabel.text = ""
            searchResultSubTitleLabel.text = ""
        }
    }
    
    @IBAction func searchTextFieldEntered(_ sender: UITextField) {
        guard let text = sender.text else {
            return
        }
        
        if text.isEmpty {
            searchResultTitleLabel.text = "검색한 결과가 없습니다."
            searchResultSubTitleLabel.text = "검색어를 입력해 주세요"
        } else {
            searchResultTitleLabel.text = "검색한단어: \(text)"
            searchResultSubTitleLabel.text = "다른 단어도 검색해 보세요."
        }
    }
    
}
