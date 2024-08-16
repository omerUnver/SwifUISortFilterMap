//
//  UserModel.swift
//  SwiftUISortFilterMap
//
//  Created by M.Ömer Ünver on 16.08.2024.
//

import Foundation

struct UserModel : Identifiable {
    let id = UUID().uuidString
    let name : String?
    let points : Int
    let isVerified : Bool
}
