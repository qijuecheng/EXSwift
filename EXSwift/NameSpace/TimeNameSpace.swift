//
//  TimeNameSpace.swift
//  EXSwift
//
//  Created by 漆珏成 on 2021/1/13.
//

import Foundation


public struct TimeNameSpace<Base> {
  
  public var base: Base {
    return base_
  }
  
  public init(_ base: Base) {
    self.base_ = base
  }
  
  private let base_: Base
}


public protocol TimeWrappable {
  associatedtype Time
  var time: Time  { get }
  static var time: Time.Type { get }
}

extension TimeWrappable {

  public var time: TimeNameSpace<Self> {
    return TimeNameSpace<Self>(self)
  }

  public static var time: TimeNameSpace<Self>.Type {
    return TimeNameSpace<Self>.self
  }
}
