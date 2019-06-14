//
//  HomeRouter.swift
//  Viper
//
//  Created by Deepanshu Tyagi on 14/06/19.
//  Copyright © 2019 Deepanshu Tyagi. All rights reserved.
//

import UIKit

protocol HomeRouting {
    
}

class HomeRouter {
    var viewController: UIViewController
    
    init(view: UIViewController) {
        self.viewController = view
    }
}

extension HomeRouter: HomeRouting{
    
}
