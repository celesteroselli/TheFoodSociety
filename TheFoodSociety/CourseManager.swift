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
        case 3:
            switch module {
            case 2:
                Course3Module2()
            case 3:
                Course3Module3()
            default:
                Course3Module1()
            }
        case 2:
            switch module {
            case 2:
                Course2Module2()
            case 3:
                Course2Module3()
            default:
                Course2Module1()
            }
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

struct ArticleManager: View {
    var num: Int
    
    var body: some View {
        
        switch num {
        default:
            Article1()
        }
        
    }
}

#Preview {
    CourseManager(num:1, module:1)
}
