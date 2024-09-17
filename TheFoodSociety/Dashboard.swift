//
//  Dashboard.swift
//  TheFoodSociety
//
//  Created by Celeste Roselli on 9/12/24.
//

import SwiftUI

struct Dashboard: View {
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    HStack {
                        Text("Courses")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color("AccentColor"))
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 50)
                        Spacer()
                    }
                    ScrollView(.horizontal) {
                        HStack(spacing: 40) {
                            NavigationLink(destination: CourseView(courseNumber: 1, numModules: 3, currentCourse: 1)) {
                                Text("Course 1")
                            }
                            NavigationLink(destination: CourseView(courseNumber: 2, numModules: 3, currentCourse: 1)) {
                                Text("Course 2")
                            }
                            NavigationLink(destination: CourseView(courseNumber: 3, numModules: 3, currentCourse: 1)) {
                                Text("Course 3")
                            }
                        }.padding(.horizontal, 50)
                    }.navigationTitle("Dashboard")
                }.padding(.vertical, 70)
                VStack {
                    HStack {
                        Text("Articles")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color("AccentColor"))
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal, 50)
                        Spacer()
                    }
                    ScrollView(.horizontal) {
                        HStack(spacing: 40) {
                            NavigationLink(destination: CourseView(courseNumber: 1, numModules: 3, currentCourse: 1)) {
                                Text("Course 1")
                            }
                            NavigationLink(destination: CourseView(courseNumber: 2, numModules: 3, currentCourse: 1)) {
                                Text("Course 2")
                            }
                            NavigationLink(destination: CourseView(courseNumber: 3, numModules: 3, currentCourse: 1)) {
                                Text("Course 3")
                            }
                        }.padding(.horizontal, 50)
                    }
                }
                Spacer()
            }.navigationTitle("Dashboard")
        }
    }
}

#Preview {
    Dashboard()
}
