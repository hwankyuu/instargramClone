//
//  StoryCollectionViewCell.swift
//  Catstargram
//
//  Created by 이환규 on 2022/04/15.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageVIewUserProfile: UIImageView!
    @IBOutlet weak var viewUserProfileBackground: UIView!
    @IBOutlet weak var viewimageViewBackgroud: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        viewimageViewBackgroud.layer.cornerRadius = 48 / 2
        viewUserProfileBackground.layer.cornerRadius = 47 / 2
        imageVIewUserProfile.layer.cornerRadius = 45 / 2
        imageVIewUserProfile.clipsToBounds = true
        // Initialization code
    }

}
