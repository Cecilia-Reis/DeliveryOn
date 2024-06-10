//
//  Double+.swift
//  DeliveryOn
//
//  Created by Cecilia Reis on 10/06/24.
//

import Foundation

extension Double {
    func formatPrice() -> String {
        let formattedString = String(format: "%2.f",self)
        return formattedString.replacingOccurrences(of: ".", with: ",")
    }
}
