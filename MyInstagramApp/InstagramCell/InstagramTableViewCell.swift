//
//  InstagramTableViewCell.swift
//  MyInstagramApp
//
//  Created by Trần Văn Cam on 15/11/2022.
//

import UIKit

class InstagramTableViewCell: UITableViewCell {
    @IBOutlet weak var authorAvatar: UIImageView!
    @IBOutlet weak var authorName: UILabel!
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var commentButton: UIButton!
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var countLikeLabel: UILabel!
    
    var feed: NewFeed? {
        didSet {
            if let feed = feed {
                authorName.text = feed.authorName
                authorAvatar.image = UIImage(named: feed.authorAvatar)
                postImage.image = UIImage(named: feed.postImageName)
                countLikeLabel.text = "\(feed.countLike) like"
                
                likeButton.setImage(UIImage(systemName: feed.isLiked ? "heart.fill" : "heart"), for: .normal)
                if feed.isLiked {
                    likeButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
                    likeButton.tintColor = .red
                } else {
                    likeButton.setImage(UIImage(systemName: "heart"), for: .normal)
                    likeButton.tintColor = .black
                }
            }
        }
    }
    
    var handleLike: (() -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        authorAvatar.clipsToBounds = true
        authorAvatar.layer.cornerRadius = authorAvatar.bounds.width / 2
    }
    
    @IBAction func actionLikeButton(_ sender: UIButton) {
        handleLike?()
    }
}
