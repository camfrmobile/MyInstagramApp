//
//  ViewController.swift
//  MyInstagramApp
//
//  Created by Trần Văn Cam on 14/11/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var feeds: [NewFeed] = fakeData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: "InstagramTableViewCell", bundle: nil), forCellReuseIdentifier: "InstagramTableViewCell")
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return feeds.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell = tableView.dequeueReusableCell(withIdentifier: "InstagramTableViewCell", for: indexPath) as! InstagramTableViewCell
        
        let feed = feeds[indexPath.row]
        tableCell.feed = feed
        
        tableCell.handleLike = {
            self.feeds[indexPath.row].isLiked = !feed.isLiked
            
            if feed.isLiked {
                self.feeds[indexPath.row].countLike -= 1
            } else {
                self.feeds[indexPath.row].countLike += 1
            }
            
            tableView.reloadData()
        }
        
        return tableCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
}
