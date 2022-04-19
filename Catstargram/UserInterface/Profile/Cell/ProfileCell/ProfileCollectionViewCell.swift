//
//  ProfileCollectionViewCell.swift
//  Catstargram
//
//  Created by 이환규 on 2022/04/15.
//

import UIKit

class ProfileCollectionViewCell: UICollectionViewCell {

static let identifier = "ProfileCollectionViewCell"
    
    
 
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var addProfileImageView: UIImageView!
    
    
    @IBOutlet weak var editButton: UIButton!
    
    @IBOutlet weak var addFriendButton: UIButton!
    
    @IBOutlet weak var postingCountLabel: UILabel!
    
    @IBOutlet weak var followerCountLabel: UILabel!
    
    @IBOutlet weak var followingCountLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupAttribute()
    }

    
    private func setupAttribute() {
        profileImageView.layer.cornerRadius = 88 / 2
        addProfileImageView.layer.cornerRadius = 24 / 2
        
        profileImageView.layer.borderColor = UIColor.darkGray.cgColor
        profileImageView.layer.borderWidth = 1
        
        editButton.layer.cornerRadius = 5
        editButton.layer.borderColor = UIColor.lightGray.cgColor  //cgColor 는 uikit 내부 경계선 ;; 코어그래픽이라는 로우레벨에 라이브러리가 이미 있음 그것을 통해서 보더칼라를 주는 코드라고 생각하면 됨
        editButton.layer.borderWidth = 1
        
        addFriendButton.layer.cornerRadius = 3
        addFriendButton.layer.borderColor = UIColor.lightGray.cgColor
        addFriendButton.layer.borderWidth = 1
        
        [postingCountLabel,  followerCountLabel, followingCountLabel]
            .forEach { $0?.text = "\(Int.random(in: 0...10))"}
      
        

    }
}
