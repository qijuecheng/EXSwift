//
//  EXDate.swift
//  RXSwiftDemo
//
//  Created by 漆珏成 on 2021/1/8.
//

import Foundation


extension Date: ExtensionWrappable {}

extension ExtensionNameSpace where Base == Date {
  
  
  public func firstOfYear() -> DateProvider {
    let this = self.base
    let calendar = NSCalendar.current
    let components = calendar.dateComponents(Set<Calendar.Component>([.year]), from: this)
    let date = calendar.date(from: components)!
    return DateProvider(from: date)
  }
  
  public func format(_ tmplate: DateFormaterString = .yyyyMMddUnderline) -> DateString {
    let this = self.base
    return DateString(from: this, format: tmplate);
  }
  
  public var timeInterval: DateTimeInterval {
    let this = self.base
    return DateTimeInterval(from: this)
  }
}


//Date().ex.timeInterval.asSeconds()
//
//Date().ti.asSeconds()
