//
//  StringDate.swift
//  XSCommon
//
//  Created by 漆珏成 on 2020/5/6.
//  Copyright © 2020 grdoc. All rights reserved.
//

import Foundation


public protocol DateConvertible {
  func asDate() -> Date?
}


public struct StringDate: DateConvertible {
  var rawValue: String
  var format: DateFormaterString
  
  public init(from rawValue: String, format: DateFormaterString) {
    self.rawValue = rawValue;
    self.format = format;
  }
  
  public func asDate() -> Date? {
    let dateFormatter = DateFormatter();
    dateFormatter.dateFormat = format.rawValue;
    let date = dateFormatter.date(from: rawValue);
    return date;
  }
}

