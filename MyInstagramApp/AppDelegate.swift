//
//  AppDelegate.swift
//  MyInstagramApp
//
//  Created by Trần Văn Cam on 14/11/2022.
//
/*
 MARK: Tạo màn new feed của instagram (basic)
 - Tạo tiêu đề với logo Instagram và nút send
 - Thêm hình ảnh và tên chủ sở hữu bài đăng
 - Tạo nút thích (có thể thay đổi trạng thái thích <---> bỏ thích, nút bình luận, nút chia sẻ
 - Hiển thị tổng số lượt thích
*/
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

