//
//  UserModel.swift
//  ToDoList
//
//  Created by Hazel Handrata on 23/12/23.
//

import Foundation

struct UserModel: Codable {
    let id: String;
    let name: String;
    let email: String;
    let joined: TimeInterval;
}
