//
//  PostModel.swift
//  SportCity
//
//  Created by Jose Dominguez on 17/7/21.
//

import Foundation
import SwiftUI

struct PostModel: Identifiable, Hashable {
    
    var id = UUID()
    var postID: String // ID for the post in database
    var userID: String // ID for the user in Database
    var username: String // User of user in Database
    var caption: String?
    var dataCreated: Date
    var likeCount: Int
    var likedByUser: Bool
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    

}
