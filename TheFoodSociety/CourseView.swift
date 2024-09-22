//
//  CourseOneGeneral.swift
//  TheFoodSociety
//
//  Created by Celeste Roselli on 9/12/24.
//

import SwiftUI

struct CourseView: View {
    @ObservedObject var course: WrappedStruct<CourseSettings>
    
    var body: some View {
        VStack {
                VStack{
                    Spacer()
                    
                        HStack {
                            VStack(spacing:40) {
                                ForEach(1..<(course.item.numModules+1), id: \.self) {i in
                                    Button("Module \(i)") {
                                        course.item.currentModule = i
                                        print(course.item.currentModule)
                                        
                                    }
                                }
                                Spacer()
                            }.padding(.all, 20.0)
                                .ignoresSafeArea()
                                .background(Color.color)
                            Spacer()
                            CourseManager(num:course.item.number, module:course.item.currentModule)
                            Spacer()
                        }
                    
                    
                }
        }.navigationTitle(course.item.name)
    }
}
