//
//  Dashboard.swift
//  TheFoodSociety
//
//  Created by Celeste Roselli on 9/12/24.
//

import SwiftUI

struct Dashboard: View {
    @State var currentArticle:Int = 1
    
    @ObservedObject var user = UserSettings.shared
    
    @ObservedObject var dash_course1: WrappedStruct<CourseSettings> = WrappedStruct(withItem: course1)
    @ObservedObject var dash_course2: WrappedStruct<CourseSettings> = WrappedStruct(withItem: course2)
    @ObservedObject var dash_course3: WrappedStruct<CourseSettings> = WrappedStruct(withItem: course3)
    @ObservedObject var dash_article1: WrappedStruct<ArticleSettings> = WrappedStruct(withItem: article1)
    @ObservedObject var dash_article2: WrappedStruct<ArticleSettings> = WrappedStruct(withItem: article2)
    @ObservedObject var dash_article3: WrappedStruct<ArticleSettings> = WrappedStruct(withItem: article3)
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    if (UserSettings.shared.currentCourse.item.number > 0) {
                        VStack {
                            HStack {
                                Text("Resume Course")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("AccentColor"))
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 50)
                                Spacer()
                            }
                            NavigationLink(destination: CourseView(course: UserSettings.shared.currentCourse)) {
                                Text(UserSettings.shared.currentCourse.item.name)
                            }.padding(.top, 10)
                        }.padding(.bottom, 70)
                    }
                    if (UserSettings.shared.currentArticle.item.number > 0) {
                        VStack {
                            HStack {
                                Text("Resume Article")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("AccentColor"))
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 50)
                                Spacer()
                            }
                            NavigationLink(destination: ArticleView(article: UserSettings.shared.currentArticle)) {
                                Text(UserSettings.shared.currentArticle.item.name)
                            }.padding(.top, 10)
                        }.padding(.bottom, 70)
                    }
                    
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
                            NavigationLink(destination: CourseView(course: dash_course1)) {
                                Text(course1.name)
                            }.simultaneousGesture(TapGesture().onEnded {
                                UserSettings.shared.currentCourse = dash_course1
                                print(UserSettings.shared.currentCourse.item.number)
                            })
                            NavigationLink(destination: CourseView(course: dash_course2)) {
                                Text(course2.name)
                            }.simultaneousGesture(TapGesture().onEnded {
                                UserSettings.shared.currentCourse = dash_course2
                                print(UserSettings.shared.currentCourse.item.number)
                            })
                            NavigationLink(destination: CourseView(course: dash_course3)) {
                                Text(course3.name)
                            }.simultaneousGesture(TapGesture().onEnded {
                                UserSettings.shared.currentCourse = dash_course3
                                print(UserSettings.shared.currentCourse.item.number)
                            })
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
                            NavigationLink(destination: ArticleView(article:dash_article1)) {
                                Text(Article1().title)
                            }.simultaneousGesture(TapGesture().onEnded {
                                UserSettings.shared.currentArticle = dash_article1
                                print(UserSettings.shared.currentCourse.item.number)
                            })
                            NavigationLink(destination: ArticleView(article:dash_article2)) {
                                Text(Article2().title)
                            }.simultaneousGesture(TapGesture().onEnded {
                                UserSettings.shared.currentArticle = dash_article2
                                print(UserSettings.shared.currentCourse.item.number)
                            })
                            NavigationLink(destination: ArticleView(article:dash_article3)) {
                                Text(Article3().title)
                            }.simultaneousGesture(TapGesture().onEnded {
                                UserSettings.shared.currentArticle = dash_article3
                                print(UserSettings.shared.currentCourse.item.number)
                            })
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
