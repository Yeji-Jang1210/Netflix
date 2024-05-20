//
//  MainViewController.swift
//  Netflix
//
//  Created by 장예지 on 5/16/24.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var posterImageView: UIImageView!
    @IBOutlet var playButton: UIButton!
    @IBOutlet var wishListButton: UIButton!
    @IBOutlet var contensLabel: UILabel!
    
    @IBOutlet var badges: [UIImageView]!
    @IBOutlet var posterImages: [UIImageView]!
    
    let posters: [String] = ["노량", "더퍼스트슬램덩크", "밀수", "범죄도시3"]
    let hotPosters: [String] = ["무빙", "베테랑", "부산행"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //navigation bar title 색 변경
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        
        view.backgroundColor = .darkGray
        backgroundImageView.image = UIImage(named: "background")
        backgroundImageView.contentMode = .scaleAspectFill
        
        posterImageView.image = UIImage(named: "노량")
        posterImageView.contentMode = .scaleAspectFill
        posterImageView.layer.cornerRadius = 15
        
        playButton.setBackgroundImage(UIImage(named: "play_normal"), for: .normal)
        playButton.setBackgroundImage(UIImage(named: "play_highlighted"), for: .highlighted)
        playButton.layer.cornerRadius = 5
        
        wishListButton.setImage(UIImage(systemName: "plus"), for: .normal)
        wishListButton.tintColor = .white
        wishListButton.backgroundColor = .darkGray
        wishListButton.setTitleColor(.white, for: .normal)
        wishListButton.setTitle("내가 찜한 리스트", for: .normal)
        wishListButton.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        wishListButton.layer.cornerRadius = 5
        wishListButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -10, bottom: 0, right: 0)
        
        
        
        contensLabel.text = "지금 뜨는 콘텐츠"
        contensLabel.textColor = .white
        
        for index in hotPosters.indices {
            posterImages[index].image = UIImage(named:hotPosters[index])
            posterImages[index].contentMode = .scaleAspectFill
            posterImages[index].layer.cornerRadius = 5
            badges[index].image = UIImage(named: "top10 badge")
            badges[index].contentMode = .scaleAspectFit
            badges[index].isHidden = true
        }
    }

    @IBAction func playButtonClicked(_ sender: Any) {
        let randomIndex = Int.random(in: posters.indices)
        posterImageView.image = UIImage(named: posters[randomIndex])
        
        for imageView in badges {
            imageView.isHidden = Bool.random()
        }
        
        
    }
}
