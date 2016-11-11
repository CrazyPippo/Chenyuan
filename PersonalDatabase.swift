//
//  PersonalDatabase.swift
//  Chenyuan
//
//  Created by Pippo on 4/28/16.
//  Copyright © 2016 Pippo. All rights reserved.
//

import Foundation
class PersonalDatabase{
    
    var sectionNames: [String] = ["Identity", "Hobbies", "Traveled"]
    var identities: [String] = ["origin", "residence", "age","nicknames", "And more..."]
    var hobbies: [String] = ["photography", "guitar", "swimming", "programming"]
    var traveled: [String] = ["US", "Turkey", "Australia", "England", "Ireland"]
    
    var identityDetail: [String] = ["Chengdu, China", "Madison, USA", "20", "Pippo, Freddie", "Single"]
    var hobbyDetail: [String] = ["portraiture & landscape", "acoustic guitarist", "at least two times a week", "currently working on iOS app"]
    
    func initialize(inout sections: [Section]){ 
        for i in 0...sectionNames.count - 1{
            switch i {
            // indentity section
            case 0:
                sections.append(Section(section_name: sectionNames[0], number_of_cells: identities.count, cell_names: identities, cell_detail: identityDetail))
                break
            // hobby section
            case 1:
                sections.append(Section(section_name: sectionNames[1], number_of_cells: hobbies.count, cell_names: hobbies, cell_detail:hobbyDetail))
                break
            // traveled section
            case 2:
                sections.append(Section(section_name: sectionNames[2], number_of_cells: traveled.count, cell_names: traveled))
                break
            default: break
            }
        }
    }
    

}