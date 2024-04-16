//
//  EXInt64ToDate.swift
//  RXSwiftDemo
//
//  Created by 漆珏成 on 2021/1/8.
//

import Foundation

extension Int64: ExtensionWrappable {}

extension ExtensionNameSpace where Base == Int64 {
  public var date : DateProvider {
    let this = self.base / 1000
    let date = Date(timeIntervalSince1970: TimeInterval(this))
    return DateProvider(from: date)
  }
}

