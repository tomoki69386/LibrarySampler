//
//  NVActivityIndicatorViewViewController.swift
//  LibrarySampler
//
//  Created by 築山朋紀 on 2019/01/25.
//  Copyright © 2019 tomoki. All rights reserved.
//

import UIKit
import NVActivityIndicatorView

class NVActivityIndicatorViewViewController: UIViewController {
    
    private let presentingIndicatorTypes = {
        return NVActivityIndicatorType.allCases.filter { $0 != .blank }
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "NVActivityIndicatorView"
        view.backgroundColor = .white
        
        let cols = 4
        let rows = 8
        let cellWidth = Int(self.view.frame.width / CGFloat(cols))
        let cellHeight = Int(self.view.frame.height / CGFloat(rows))
        
        for (index, indicatorType) in presentingIndicatorTypes.enumerated() {
            let x = index % cols * cellWidth
            let y = index / cols * cellHeight
            let frame = CGRect(x: x, y: y, width: cellWidth, height: cellHeight)
            let activityIndicatorView = NVActivityIndicatorView(frame: frame,
                                                                type: indicatorType)
            let animationTypeLabel = UILabel(frame: frame)
            
            animationTypeLabel.text = String(index)
            animationTypeLabel.sizeToFit()
            animationTypeLabel.textColor = UIColor.white
            animationTypeLabel.frame.origin.x += 5
            animationTypeLabel.frame.origin.y += CGFloat(cellHeight) - animationTypeLabel.frame.size.height
            
            activityIndicatorView.padding = 20
            if indicatorType == NVActivityIndicatorType.orbit {
                activityIndicatorView.padding = 0
            }
            self.view.addSubview(activityIndicatorView)
            self.view.addSubview(animationTypeLabel)
            activityIndicatorView.startAnimating()
            
            let button: UIButton = UIButton(frame: frame)
            
            self.view.addSubview(button)
        }
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
