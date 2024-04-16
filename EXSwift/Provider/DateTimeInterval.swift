//
//  DateTimeInterval.swift
//  RXSwiftDemo
//
//  Created by 漆珏成 on 2021/1/11.
//

import Foundation
public protocol DateTimeIntervalConvertible {
  func asSeconds() -> Int
  func asMillisecond() -> Int64
}

public class DateTimeInterval: DateTimeIntervalConvertible {
  
  private var rawValue: Date
  
  init(from rawValue: Date) {
    self.rawValue = rawValue
  }
  
  public func asSeconds() -> Int {
    return Int(rawValue.timeIntervalSince1970)
  }
  
  public func asMillisecond() -> Int64 {
    return Int64(rawValue.timeIntervalSince1970 * 1000)
  }
}
