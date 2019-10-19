//
//  AppDelegate.swift
//  MyLoginJoin
//
//  Created by 503 on 2019/10/19.
//  Copyright © 2019 dasol. All rights reserved.
//

import UIKit

// 유저 스트럭트 선언
struct UserInfo {
    var id: String = ""
    var pw: String = ""
    var name:String = ""
    var phone:String = ""
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    // 글로벌 변수로 유저 선언, Struct변수를 선언함. 객체할당(인스턴스 생성)
    var userInfo:UserInfo = UserInfo()
    // 로그인여부 (true/false)
    var isLogin:Bool = false
    var isAgree:Bool = false
    
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

