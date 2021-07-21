//
//  FeedView.swift
//  SportCity
//
//  Created by Jose Dominguez on 13/7/21.
//

import SwiftUI

struct FeedView: View {
    
    @ObservedObject var posts: PostArrayObject
    
    var body: some View {
        ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
            LazyVStack{
                ForEach(posts.dataArray, id: \.self){post in
                    PostView(post: post)
                }
            }
           
        })
        .navigationBarTitle("FEED VIEW")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            FeedView(posts: PostArrayObject())
        }
    }
}
