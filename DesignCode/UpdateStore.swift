//
//  UpdateStore.swift
//  DesignCode
//
//  Created by David S on 7/15/19.
//  Copyright © 2019 David S. All rights reserved.
//

import Combine
import SwiftUI

class UpdateStore: ObservableObject {
   var willChange = PassthroughSubject<Void, Never>()

   var updates: [Update] {
      didSet {
         willChange.send()
      }
   }

   init(updates: [Update] = []) {
      self.updates = updates
   }
}
