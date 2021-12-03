//
//  SceneDelegate.swift
//  F1App
//
//  Created by İbrahim Gün on 17.11.2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var appRouter: AppRouter?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: scene)
        
        appRouter = AppRouter(window: window)
        
        appRouter?.start()
   
    }
}

