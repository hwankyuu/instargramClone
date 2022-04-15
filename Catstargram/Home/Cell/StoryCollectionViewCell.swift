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
        
        viewimageViewBackgroud.layer.cornerRadius = 24
        viewUserProfileBackground.layer.cornerRadius = 23.5
        imageVIewUserProfile.layer.cornerRadius = 22.5
        imageVIewUserProfile.clipsToBounds = true
        // Initialization code
    }

}
