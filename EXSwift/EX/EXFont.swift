//
//  EXFont.swift
//  RXSwiftDemo
//
//  Created by 漆珏成 on 2021/1/8.
//

import UIKit

extension UIFont : ExtensionWrappable {}

extension ExtensionNameSpace where Base == UIFont {
  
  public static func medium(_ fontSize: CGFloat) -> UIFont? {
    return UIFont(name: "PingFangSC-Medium", size: fontSize)
  }
  
  public static func medium(_ fontSize: CGFloat) -> EXFont? {
    return EXFont(name: "PingFangSC-Medium", size: fontSize)
  }
  
  public static func regular(_ fontSize: CGFloat) -> UIFont? {
    return UIFont(name: "PingFangSC-Regular", size: fontSize)
  }
  
  public static func regular(_ fontSize: CGFloat) -> EXFont? {
    return EXFont(name: "PingFangSC-Regular", size: fontSize)
  }
  
  public static func semibold(_ fontSize: CGFloat) -> UIFont? {
    return UIFont(name: "PingFangSC-Semibold", size: fontSize)
  }
  
  public static func semibold(_ fontSize: CGFloat) -> EXFont? {
    return EXFont(name: "PingFangSC-Semibold", size: fontSize)
  }
  
  public static func light(_ fontSize: CGFloat) -> UIFont? {
    return UIFont(name: "PingFangSC-Light", size: fontSize)
  }
  
  public static func light(_ fontSize: CGFloat) -> EXFont? {
    return EXFont(name: "PingFangSC-Light", size: fontSize)
  }
  
  public static func bold(_ fontSize: CGFloat) -> UIFont? {
    return UIFont(name: "Helvetica-Bold", size: fontSize)
  }
  
  public static func bold(_ fontSize: CGFloat) -> EXFont? {
    return EXFont(name: "Helvetica-Bold", size: fontSize)
  }
}


public class EXFont {
  
  private var fontName: String
  private var pointSize: CGFloat
  
  init(name: String, size: CGFloat) {
    fontName = name
    pointSize = size
  }
  
  public func scale(_ newValue: CGFloat) -> UIFont? {
    return UIFont(name: self.fontName, size: newValue)
  }
  
  public func hscale() -> UIFont? {
    let scaleW = UIScreen.main.bounds.width / 375
    let newValue = self.pointSize * scaleW
    return scale(newValue)
  }
  
  public func vscale() -> UIFont? {
    let scaleW = UIScreen.main.bounds.height / 667
    let newValue = self.pointSize * scaleW
    return scale(newValue)
  }
}
