//
//  Course2Content.swift
//  TheFoodSociety
//
//  Created by Celeste Roselli on 9/22/24.
//

import SwiftUI

struct Course2Module1: View {
    var body: some View {
        ScrollView {
            Text("Here is your scrollable Course 2 Module 1 Text")
        }
        .padding(.top, 50)
    }
}

struct Course2Module2: View {
    var body: some View {
        ScrollView {
            Text("Here is your scrollable Course 2 Module 2 Text")
        }
        .padding(.top, 50)
    }
}

struct Course2Module3: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var user = UserSettings.shared
    
    var body: some View {
        ScrollView {
            Text("Here is your scrollable Course 2 Module 3 Text")
            Button("Finished article"){
                user.currentCourse = WrappedStruct(withItem: course0)
                dismiss()
            }
        }
        .padding(.top, 50)
    }
}

#Preview {
    Course2Module1()
}
