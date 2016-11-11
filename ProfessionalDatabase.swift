//
//  ProfessionalDatabase.swift
//  Chenyuan
//
//  Created by Pippo on 4/28/16.
//  Copyright © 2016 Pippo. All rights reserved.
//

import Foundation
class ProfessionalDatabase {
    
    let sectionNames: [String] = ["Education", "Skills", "Courses", "Experiences"]
    let education: [String] = ["school", "year", "major", "GPA"]
    let skills: [String] = ["Java", "C++", "Swift", "HTML & CSS", "Lightroom & Photoshop"]
    let courses: [String] = ["CS 252", "CS 302", "CS 354", "CS 367", "CS 368", "CS 570"]
    let experiences: [String] = ["Project Mentor", "CS Tutor", "CS Club Leader", "Soccer Referee"]
    let educationDetails: [String] = ["UW-Madison", "Sophomore", "Computer Sciences", "Oh, please..."]
    let coursesDetails: [String] = ["Introduction to Computer Engineering", "Introduction to Java Programming", "Machine Organization and Programming", "Introduction to Data Structures", "C++ for Java Programmers", "Introduction of Human-Computer Interaction"]
    let experienceLocations: [String] = ["Madison, USA", "Madison, USA", "Madison, USA", "Madison, USA"]
    let experienceCompanies: [String] = ["Madison Metropolitan School District", "University of Wisconsin", "Glenn Stephens Elementary School", "University of Wisconsin"]
    let experienceDetails: [String] = ["1. Meet with three middle school students weekly working on various different projects based on Arduino Uno in both hardware and software\n\n\n2.  Introduce middle school students basics of electrical circuits and programming such as functions, variables, control flow .etc.", "1. Review notes and materials of an introductory Java programming course with undergraduate tutee each week\n\n2.  Help tutee design and debug their programs\n\n3. Hold review session before the midterm and quiz", "1. Led a weekly club and taught 16 fifth and sixth grade children introductory computer programming\n\n2.  Mentored children design their games stories using Scratch (total 16 projects\n\n3. Helped every child obtain a certificate of programming in the end", "1. Set up field equipment for matches (e.g. corner flags and goal gates)\n\n2.  Officiated weekly soccer matches and maintained filed disciplines for UW-Madison Soccer Leagues"]
    
    func initialize(inout sections: [Section]){
        for i in 0...sectionNames.count - 1{
            switch i {
            // education section
            case 0:
                sections.append(Section(section_name: sectionNames[0], number_of_cells: education.count, cell_names: education, cell_detail: educationDetails))
                break
            // skill section
            case 1:
                 sections.append(Section(section_name: sectionNames[1], number_of_cells: skills.count, cell_names: skills))
                break
            // course section
            case 2:
                 sections.append(Section(section_name: sectionNames[2], number_of_cells: courses.count, cell_names: courses, cell_detail: coursesDetails))
                break
            // experience section
            case 3:
             sections.append(Section(section_name: sectionNames[3], number_of_cells: experiences.count, cell_names: experiences, cell_detail: experienceLocations))
                break
            default: break
            }
        }
    }
    
    func getExperienceDetail(row: Int) -> String {
        return experienceDetails[row]
    }
    
    func getExperienceCompanies(row: Int) -> String {
        return experienceCompanies[row]
    }
    
}