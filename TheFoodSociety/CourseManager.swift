//
//  CourseOneContent.swift
//  TheFoodSociety
//
//  Created by Celeste Roselli on 9/15/24.
//

import SwiftUI

struct CourseManager: View {
    var num: Int
    var module: Int
    
    var body: some View {
        
        switch num {
        default:
            switch module {
            case 2:
                Course1Module2()
            case 3:
                Course1Module3()
            default:
                Course1Module1()
            }
        }
        
    }
}

#Preview {
    CourseManager(num:1, module:1)
}
