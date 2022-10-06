//
//  PKHUDOSXSpinningView.swift
//  25Hours
//
//  Created by Giau Huynh on 29/09/2022.
//

import UIKit
//import Gifu

public class PKHUDOSXSpinningView: UIView {
    let gifImageView: GIFImageView = {
        let gifImageView = GIFImageView()
        gifImageView.clipsToBounds = true
        gifImageView.contentMode = .scaleAspectFill
        gifImageView.animate(withGIFNamed: "osx_spinning5")
        return gifImageView
    }()
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    init() {
        super.init(frame: CGRect(x: 0, y: 0, width: 108, height: 108))
        
        gifImageView.frame = CGRect(x: 18, y: 18, width: 72, height: 72)
        addSubview(gifImageView)
    }
}
