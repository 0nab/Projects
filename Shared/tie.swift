//
//  other.swift
//  uitest
//
//  Created by Marcus J Naess on 7/30/21.
//

import Foundation

class tie {
    var time: Timer?
    func t() {
        time = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(tied), userInfo: nil, repeats: true)
    }
    
    @objc func tied() {
        
    }
}
