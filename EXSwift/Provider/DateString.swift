//
//  DateString.swift
//  RXSwiftDemo
//
//  Created by 漆珏成 on 2021/1/8.
//

import Foundation

fileprivate let dateFormatter: DateFormatter = {
  let dateFmt = DateFormatter()
  dateFmt.timeZone = TimeZone.current
  return dateFmt
}()

public protocol StringConvertible {
  func asString() -> String?
}


public struct DateString: StringConvertible {
  var rawValue: Date
  var format: DateFormaterString
  
  public init(from rawValue: Date, format: DateFormaterString) {
    self.rawValue = rawValue;
    self.format = format;
  }
  
  public func asString() -> String? {
    dateFormatter.dateFormat = format.rawValue;
    let date = dateFormatter.string(from: rawValue);
    return date;
  }
}
