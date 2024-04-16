//
//  EXString.swift
//  RXSwiftDemo
//
//  Created by 漆珏成 on 2021/1/8.
//

import UIKit

extension String: ExtensionWrappable {}

extension ExtensionNameSpace where Base == String {
    
    public func sizeThatFits(with size: CGSize, attributes: [NSAttributedString.Key : Any]) -> CGSize {
        let this = self.base as NSString
        return this.boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil).size
    }
    
    public func format(_ tmplate: DateFormaterString = .yyyyMMddUnderline) -> StringDate {
        let this = self.base
        return StringDate(from: this, format: tmplate);
    }
}



