//
//  EasySocialButtonViewController.swift
//  LibrarySampler
//
//  Created by 築山朋紀 on 2019/01/25.
//  Copyright © 2019 tomoki. All rights reserved.
//

import UIKit
import EasySocialButton

class EasySocialButtonViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "EasySocialButton"
        view.backgroundColor = .white
        
        let socialButton = AZSocialButton()
        socialButton.frame = CGRect(x: view.center.x - 100, y: view.center.y, width: 200, height: 40)
        
        socialButton.animateInteraction = true
        socialButton.useCornerRadius = true
        socialButton.cornerRadius = 5
        socialButton.highlightOnTouch = false
        socialButton.setTitle("Sign in with Google", for: [])
        socialButton.setTitleColor(.black, for: [])
        socialButton.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        
        socialButton.onClickAction = { (button) in
            print("do social login stuff")
        }
        
        view.addSubview(socialButton)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
