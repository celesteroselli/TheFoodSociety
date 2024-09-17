//
//  CourseOneGeneral.swift
//  TheFoodSociety
//
//  Created by Celeste Roselli on 9/12/24.
//

import SwiftUI

struct CourseView: View {
    var courseNumber: Int
    var numModules: Int
    @State var currentCourse: Int
    
    var body: some View {
        VStack {
                VStack{
                    
                    Spacer()
                    
                        HStack {
                            VStack(spacing:40) {
                                ForEach(1..<(numModules+1), id: \.self) {i in
                                    Button("Module \(i)") {
                                        currentCourse = i
                                    }
                                }
                                Spacer()
                            }.padding(.all, 20.0)
                                .ignoresSafeArea()
                                .background(Color.color)
                            Spacer()
                            CourseManager(num:courseNumber, module:currentCourse)
                            Spacer()
                        }
                    
                    
                }
        }.navigationTitle("Course \(courseNumber)")
    }
}

#Preview {
    CourseView(courseNumber: 1, numModules:3, currentCourse: 1)
}
