//
//  PostArrayObject.swift
//  SportCity
//
//  Created by Jose Dominguez on 18/7/21.
//

import Foundation

class PostArrayObject: ObservableObject{
    
    @Published var dataArray = [PostModel]()
    
    init() {
        
        print("FETCH FROM DATABASE HERE")
        
        let post1 = PostModel(postID: "", userID: "", username: "Joe Green", caption: "This is a caption", dataCreated: Date(), likeCount: 0, likedByUser: false)
        
        let post2 = PostModel(postID: "", userID: "", username: "Jessica", caption: "This is a caption", dataCreated: Date(), likeCount: 0, likedByUser: false)
        
        let post3 = PostModel(postID: "", userID: "", username: "Emily", caption: "This is a caption", dataCreated: Date(), likeCount: 0, likedByUser: false)
        
        let post4 = PostModel(postID: "", userID: "", username: "Christopher", caption: "This is a caption", dataCreated: Date(), likeCount: 0, likedByUser: false)
        
        self.dataArray.append(post1)
        self.dataArray.append(post2)
        self.dataArray.append(post3)
        self.dataArray.append(post4)
        
        
    }
    
    
    
    
}


