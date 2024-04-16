//
//  DateFormaterString.swift
//  XSCommon
//
//  Created by 漆珏成 on 2020/5/6.
//  Copyright © 2020 grdoc. All rights reserved.
//

import Foundation

public struct DateFormaterString {
  
  public static let yyyyMMddUnderline = DateFormaterString("yyyy-MM-dd")
  public static let yyyyMMdd = DateFormaterString("yyyyMMdd")
  
  public static let yyyyMM = DateFormaterString("yyyyMM")
   
  public static let yyyyyMMUnderline = DateFormaterString("yyyy-MM")

  
  public init(_ rawValue: String) {
    self.rawValue = rawValue;
  }
  
  public var rawValue: String
}
