//
//  UIView.swift
//  RXSwiftDemo
//
//  Created by 漆珏成 on 2021/1/7.
//

import UIKit

extension UIView: ExtensionWrappable {}

extension ExtensionNameSpace where Base : UIView {
  
  public static var name: String {
    return NSStringFromClass(Base.self).components(separatedBy: ".").last!
  }
}


