//
//  CustomView.swift
//  Module3
//
//  Created by Codie Academy on 26.1.24..
//  Copyright © 2024 Codie Academy. All rights reserved.
//

import UIKit

class CustomView: UIView {

    let nibName = "CustomView"

    @IBOutlet var swipeRightGestureRecognizer: UISwipeGestureRecognizer!
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    @IBAction func swipedRight(_ sender: Any) {
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        guard let view = loadViewFromNib() else { return }
        view.frame = self.bounds
        self.addSubview(view)
    }

    func loadViewFromNib() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
}
