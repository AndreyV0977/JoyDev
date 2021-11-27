//
//  SwiftUIView.swift
//  JoyDev
//
//  Created by Kitsune on 26.11.2021.
//

import SwiftUI

struct SwiftUIView: View {
    @State var posts: [Post] = []
    
    var body: some View {
        List (posts) { post in
            Text(post.title)
                .fontWeight(.bold)
            Text(post.body)                }
        .onAppear(){
           Api().getPost { (posts) in
                   self.posts = posts
                        
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
