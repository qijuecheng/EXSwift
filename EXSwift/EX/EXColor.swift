//
//  EXColor.swift
//  EXSwift
//
//  Created by 漆珏成 on 2024/4/19.
//

import UIKit

extension UIColor: ExtensionWrappable {}

extension ExtensionNameSpace where Base == UIColor {
  
  
  /// 十六进制颜色（0x开头）转RGB颜色
  /// - Parameters:
  ///   - hex: 0x开头6位数的十六进制的颜色
  ///   - alpha: 透明度 range:0~1
  /// - Returns: UIColor
  public static func rgb(hex: UInt32, alpha: CGFloat? = 1.0) -> UIColor {
    return UIColor(hex: hex, alpha: alpha ?? 1.0);
  }
  
}

extension UIColor {
  fileprivate convenience init(hex: UInt32, alpha: CGFloat = 1.0) {
    let r = (hex & 0xff0000) >> 16
    let g = (hex & 0xff00) >> 8
    let b = hex & 0xff
    self.init(red: CGFloat(r) / 0xff,
              green: CGFloat(g) / 0xff,
              blue: CGFloat(b) / 0xff,
              alpha: alpha)
  }
}
