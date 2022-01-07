//
//  CustomTextFiledLoginStyle.swift
//  DLIFE
//
//  Created by changgyo seo on 2022/01/03.
//

import UIKit

class CustomTextFiledLoginStyle: UITextField, UITextFieldDelegate{
    
    var name: String?
    var width: Double?
    var height: Double?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    //name is placeholder , width is width, height is height
    func info(name: String, width: Double, height: Double){
        self.name = name
        self.width = width
        self.height = height
        setup()
    }
    
    private func setup(){
        let bottomline = CALayer()
        bottomline.frame = CGRect(x: 0, y: self.height ?? 100, width: self.width ?? 200 , height: 1)
       // print(self.width ?? 0)
        bottomline.backgroundColor = UIColor.white.cgColor
        self.placeholder = name ?? ""
        self.borderStyle = UITextField.BorderStyle.none
        self.layer.addSublayer(bottomline)
        self.textColor = .white
        self.autocorrectionType = .no
        self.clearButtonMode = .always
        self.autocapitalizationType = .none
    }
    
}
