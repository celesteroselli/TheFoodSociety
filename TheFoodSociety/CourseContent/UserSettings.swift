//
//  UserSettings.swift
//  TheFoodSociety
//
//  Created by Celeste Roselli on 9/22/24.
//

import Foundation
import SwiftUI

class UserSettings: ObservableObject {
    @Published var currentCourse: WrappedStruct<CourseSettings> = WrappedStruct(withItem: course0)
    @Published var currentArticle: WrappedStruct<ArticleSettings> = WrappedStruct(withItem: article0)
    
    static var shared: UserSettings = UserSettings()
}

struct CourseSettings {
    var number: Int = 1
    var currentModule: Int = 1
    var numModules: Int = 3
    var name: String = "Name"
}

struct ArticleSettings {
    
    var number: Int = 1
    var name: String = "Name"
    
}

class WrappedStruct<T>: ObservableObject {
    @Published var item: T
    
    init(withItem item:T) {
        self.item = item
    }
}

var course0 = CourseSettings(number: 0)
var course1 = CourseSettings(number: 1, numModules: 3, name: "Course 1")
var course2 = CourseSettings(number: 2, numModules: 3, name: "Course 2")
var course3 = CourseSettings(number: 3, numModules: 3, name: "Course 3")

var article0 = ArticleSettings(number: 0)
var article1 = ArticleSettings(number: 1, name: Article1().title)
var article2 = ArticleSettings(number: 2, name: Article2().title)
var article3 = ArticleSettings(number: 3, name: Article3().title)
