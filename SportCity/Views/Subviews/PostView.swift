//
//  PostView.swift
//  SportCity
//
//  Created by Jose Dominguez on 13/7/21.
//

import SwiftUI

struct PostView: View {
    
    @State var post: PostModel
    
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0, content: {
            
            //MARK: HEADER
            
            HStack {
                Image("Sport")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(15)
                
                Text(post.username)
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(.primary)
                
                Spacer()
                
                Image(systemName: "ellipsis")
                    .font(.headline)
            }
            .padding(.all,6)
            
            //MARK: IMAGE
            
            Image("Sport2")
                .resizable()
                .scaledToFit()
            
            // MARK: FOOTER
            
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20, content: {
                
                Image(systemName: "heart")
                    .font(.title3)
                
                Image(systemName: "bubble.middle.bottom")
                    .font(.title3)
                
                Image(systemName: "paperplane")
                    .font(.title3)
                
                Spacer()
            })
            .padding(.all, 6)
            
            
            
            
            if let caption = post.caption{
                
                HStack {
                        Text(caption)
                        Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                           }
                           .padding(.all,6)

            }
            
        })
    }
}

struct PostView_Previews: PreviewProvider {
    
    static var post: PostModel = PostModel(postID: "", userID: "", username: "Joe Green", caption: "This is a test caption", dataCreated: Date(), likeCount: 0, likedByUser: false)
    
    static var previews: some View {
        PostView(post: post)
            .previewLayout(.sizeThatFits)
    }
}
