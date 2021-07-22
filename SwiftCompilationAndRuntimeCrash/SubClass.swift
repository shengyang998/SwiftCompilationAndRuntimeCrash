//
//  SubClass.swift
//  SubClass
//
//  Created by Soleil Yu on 2021/7/22.
//

import UIKit
import BasicClassService

open class SubClass: BaseClass {
    
    override init() {
        super.init()
        handlers = internalCreateHandlers()
    }
    
    private func internalCreateHandlers() -> [String : BaseClassCallback] {
        return [
            "asdf" : { obj, data, callback in
                guard let data = data else {
                    return
                }
                callback?(data)
            }
        ]
    }
    
}
