//
//  ArticleContent.swift
//  TheFoodSociety
//
//  Created by Celeste Roselli on 9/20/24.
//

import SwiftUI

struct Article1: View {
    var title: String = "Article 1 Title"
    
    var body: some View {
        ScrollView {
            Text(title)
                .font(.title)
                .padding(.bottom)
                .fontWeight(.bold)
            Text("Here is your scrollable Article 1 text")
        }
        .padding(.top, 50)
    }
}

struct Article2: View {
    var title: String = "Article 2 Title"
    
    var body: some View {
        ScrollView {
            Text(title)
                .font(.title)
                .padding(.bottom)
                .fontWeight(.bold)
            Text("Here is your scrollable Article 2 text")
        }
        .padding(.top, 50)
    }
}

struct Article3: View {
    var title: String = "Article 3 Title"
    
    var body: some View {
        ScrollView {
            Text(title)
                .font(.title)
                .padding(.bottom)
                .fontWeight(.bold)
            Text("Here is your scrollable Article 3 text")
        }
        .padding(.top, 50)
    }
}

#Preview {
    Article1()
}
