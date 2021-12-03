//
//  Result.swift
//  F1App
//
//  Created by İbrahim Gün on 17.11.2021.
//

import Foundation

public enum Result<Value> {
    case succes(Value)
    case failure(Error)
}
