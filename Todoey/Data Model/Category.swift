//
//  Category.swift
//  Todoey
//
//  Created by Tim Nesheim on 4/16/18.
//  Copyright © 2018 Tim Nesheim. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name : String = ""
    let items = List<Item>()
}
