//
//  FeedTableViewCell.swift
//  Catstargram
//
//  Created by 이환규 on 2022/04/14.
//

import UIKit

class FeedTableViewCell: UITableViewCell {

    @IBOutlet weak var labelUserName: UILabel!
    @IBOutlet weak var imageViewUserProfile: UIImageView!
    @IBOutlet weak var imageViewFeed: UIImageView!
    @IBOutlet weak var buttonisHeart: UIButton!
    @IBOutlet weak var buttonisBookMark: UIButton!
    @IBOutlet weak var labelHowManyLike: UILabel!
    @IBOutlet weak var labelFeed: UILabel!
    @IBOutlet weak var imageViewMyProfile: UIImageView!
    
    
    @IBAction func actionIsHeart(_ sender: Any) {
        if buttonisHeart.isSelected {
            buttonisHeart.isSelected = false
        } else {
            buttonisHeart.isSelected = true
        }
    }
    
    @IBAction func actionBookMark(_ sender: Any) {
        if buttonisBookMark.isSelected {
            buttonisBookMark.isSelected = false
        } else {
            buttonisBookMark.isSelected = true
        }
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        imageViewUserProfile.layer.cornerRadius = 12.5
        imageViewUserProfile.clipsToBounds = true
        imageViewMyProfile.layer.cornerRadius = 12.5
        imageViewMyProfile.clipsToBounds = true
        
        let fontSize = UIFont.boldSystemFont(ofSize: 9)
        let attributedStr = NSMutableAttributedString(string: labelFeed.text ?? "")
        attributedStr.addAttribute(.font, value: fontSize, range: NSRange.init(location: 0, length: 3))
        
        labelFeed.attributedText = attributedStr
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
