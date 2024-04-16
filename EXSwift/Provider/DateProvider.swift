//
//  DateProvider.swift
//  RXSwiftDemo
//
//  Created by 漆珏成 on 2021/1/8.
//

import Foundation

public protocol DateProviderConvertible {
  func asDate() -> Date
  func asString() -> String?
}

public class DateProvider: DateProviderConvertible {
  
  private var rawValue: Date
  
  init(from rawValue: Date) {
    self.rawValue = rawValue
  }
  
  public func asDate() -> Date {
    return rawValue
  }
  
  public func format(_ tmplate: DateFormaterString) -> DateString {
    return rawValue.ex.format(tmplate)
  }
  
  public func asString() -> String? {
    return rawValue.ex.format().asString()
  }
}
