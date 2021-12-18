//
//  AppRouter.swift
//  F1App
//
//  Created by İbrahim Gün on 18.11.2021.
//

import UIKit

final class AppRouter {
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let viewController = ScheduleBuilder.make()
        window.rootViewController  = UINavigationController(rootViewController: viewController)
        window.makeKeyAndVisible()
    }
}
