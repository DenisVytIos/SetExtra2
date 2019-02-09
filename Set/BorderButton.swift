//
//  BorderButton.swift
//  Set
//
//  Created by Denis on 09.02.2019.
//  Copyright © 2019 Denis Vitrishko. All rights reserved.
//

import UIKit

@IBDesignable class BorderButton: UIButton {
 
    @IBInspectable var borderColor: UIColor = DefaultValues.borderColor{
        didSet{
            layer.borderColor = borderColor.cgColor
        }
    }
    @IBInspectable var borderWidth: CGFloat = DefaultValues.borderWidth{
        didSet{
            layer.borderWidth = borderWidth
        }
    }
    @IBInspectable var cornerRadius: CGFloat = DefaultValues.cornerRadius{
        didSet{
            layer.cornerRadius = cornerRadius
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureBorderButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureBorderButton()
    }
    private func configureBorderButton (){
        layer.cornerRadius = cornerRadius
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor.cgColor
        clipsToBounds = true
    }
    private struct DefaultValues{
        static let cornerRadius: CGFloat = 8.0
        static let borderWidth: CGFloat   = 4.0
        static let borderColor: UIColor  = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
    }

}
