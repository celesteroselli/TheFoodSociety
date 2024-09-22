//
//  ArticleView.swift
//  TheFoodSociety
//
//  Created by Celeste Roselli on 9/20/24.
//

import SwiftUI

struct ArticleView: View {
    @ObservedObject var user = UserSettings.shared
    @ObservedObject var article: WrappedStruct<ArticleSettings>
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ArticleManager(num:article.item.number)
        Button("Finished article"){
            user.currentArticle = WrappedStruct(withItem: article0)
            dismiss()
        }
    }
}
