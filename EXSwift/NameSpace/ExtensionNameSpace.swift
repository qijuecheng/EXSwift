//
//  ExtensionNameSpace.swift
//  HXSCommon
//
//  Created by 漆珏成 on 2020/10/26.
//  Copyright © 2020 携手医访. All rights reserved.
//

import Foundation


public struct ExtensionNameSpace<Base> {
  
  public var base: Base {
    return base_
  }
  
  public init(_ base: Base) {
    self.base_ = base
  }
  
  private let base_: Base
}


public protocol ExtensionWrappable {
  associatedtype T
  var ex: T  { get }
  static var ex: T.Type { get }
}

extension ExtensionWrappable {

  public var ex: ExtensionNameSpace<Self> {
    return ExtensionNameSpace<Self>(self)
  }

  public static var ex: ExtensionNameSpace<Self>.Type {
    return ExtensionNameSpace<Self>.self
  }
}

