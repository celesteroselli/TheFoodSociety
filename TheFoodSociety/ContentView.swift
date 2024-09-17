//
//  ContentView.swift
//  TheFoodSociety
//
//  Created by Celeste Roselli on 8/26/24.
//

import SwiftUI

var currentPage = "dashboard"

struct ContentView: View {
    var body: some View {
        VStack {
            Dashboard()
                Spacer()
                HStack {
                    Text(Image(systemName: "house"))
                    Image(systemName: "gear")
                }
            }
        }
}

#Preview {
    ContentView()
}
