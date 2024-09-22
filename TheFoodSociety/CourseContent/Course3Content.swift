//
//  Course3Content.swift
//  TheFoodSociety
//
//  Created by Celeste Roselli on 9/22/24.
//

import SwiftUI

struct Course3Module1: View {
    var body: some View {
        ScrollView {
            Text("Here is your scrollable Course 3 Module 1 Text")
        }
        .padding(.top, 50)
    }
}

struct Course3Module2: View {
    var body: some View {
        ScrollView {
            Text("Here is your scrollable Course 3 Module 2 Text")
        }
        .padding(.top, 50)
    }
}

struct Course3Module3: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var user = UserSettings.shared
    
    var body: some View {
        ScrollView {
            Text("Here is your scrollable Course 3 Module 3 Text")
            Button("Finished article"){
                user.currentCourse = WrappedStruct(withItem: course0)
                dismiss()
            }
        }
        .padding(.top, 50)
    }
}

#Preview {
    Course1Module3()
}
