//
//  CustomElement.swift
//  bertrand-course-rx
//
//  Created by Lau on 25/06/2021.
//

import UIKit

class CustomLabel: UILabel {
    convenience init(color: UIColor, textFont: UIFont) {
        self.init()
        textColor = color
        font = textFont
        numberOfLines = 0
        textAlignment = .center
        translatesAutoresizingMaskIntoConstraints = false
    }
}

class CustomButton: UIButton {
    convenience init(textColor: UIColor, withBackgroundColor: UIColor?, font: UIFont, underline: NSAttributedString?, cornerRadius: CGFloat?) {
        self.init()
        setTitleColor(textColor, for: .normal)
        titleLabel?.font = font
        backgroundColor = withBackgroundColor
        layer.cornerRadius = cornerRadius ?? 0
        setAttributedTitle(underline, for: .normal)
        translatesAutoresizingMaskIntoConstraints = false
    }
}

struct Constant {
    struct font {
        static let font20: UIFont = UIFont.systemFont(ofSize: 20)
    }
}



