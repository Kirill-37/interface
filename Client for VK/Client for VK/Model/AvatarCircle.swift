//
//  File.swift
//  Client for VK
//
//  Created by Кирилл Харузин on 10/12/2019.
//  Copyright © 2019 Кирилл Харузин. All rights reserved.
//

import Foundation
import UIKit

class CircleImageView: UIView {
    var circleImage: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addImage()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addImage()
    }
    
    func addImage(){
        circleImage = UIImageView(frame: frame)
        addSubview(circleImage)
    }
  
    override func layoutSubviews() {
        circleImage.frame = bounds
    }

}
