//
//  Instagram.swift
//  MyInstagramApp
//
//  Created by Trần Văn Cam on 15/11/2022.
//

import Foundation

struct NewFeed {
    var id: String
    var authorName: String
    var authorAvatar: String
    var postImageName: String
    var isLiked: Bool
    var countLike: Int
    
    init(authorName: String, authorAvatar: String, postImageName: String, isLiked: Bool, countLike: Int) {
        self.id = UUID().uuidString
        self.authorName = authorName
        self.authorAvatar = authorAvatar
        self.postImageName = postImageName
        self.isLiked = isLiked
        self.countLike = countLike
    }
}

func fakeData() -> [NewFeed] {
    let feed1 = NewFeed(authorName: "Doremon", authorAvatar: "doremon", postImageName: "shu_1", isLiked: true, countLike: 6503)
    let feed2 = NewFeed(authorName: "Nobita", authorAvatar: "nobita", postImageName: "shu_2", isLiked: false, countLike: 1209)
    let feed3 = NewFeed(authorName: "Xuka", authorAvatar: "xuka", postImageName: "shu_3", isLiked: false, countLike: 8906)
    let feed4 = NewFeed(authorName: "Chaien", authorAvatar: "chaien", postImageName: "shu_4", isLiked: false, countLike: 4603)
    let feed5 = NewFeed(authorName: "Xeko", authorAvatar: "xeko", postImageName: "shu_5", isLiked: true, countLike: 2908)
    
    return [feed1, feed2, feed3, feed4, feed5]
}
