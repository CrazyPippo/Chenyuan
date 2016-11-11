//
//  Section.swift
//  Chenyuan
//
//  Created by Pippo on 4/28/16.
//  Copyright © 2016 Pippo. All rights reserved.
//

import Foundation
class Section{
   
    struct cell {
        var cellName: String
        var cellDetail: String
        
        init(cell_name: String, cell_detail: String){
            cellName = cell_name
            cellDetail = cell_detail
        }
        
        init(cell_name: String){
            cellName = cell_name
            cellDetail = ""
        }
    }
    
    var sectionName: String
    var numberOfCells: Int
    var cells: [cell] = []
    var cellNames: [String] = []
    var cellDetail: [String] = []
    
    // cells with detail
    init(section_name: String, number_of_cells: Int, cell_names: [String], cell_detail: [String]){
        
        sectionName = section_name
        numberOfCells = number_of_cells
        cellNames = cell_names
        cellDetail = cell_detail
        // initialize cells
        
        for i in 0...numberOfCells - 1 {
    
            cells.append(cell(cell_name: cell_names[i], cell_detail: cellDetail[i]))
        }
    }
    
    init(section_name: String, number_of_cells: Int, cell_names: [String])
    {
        sectionName = section_name
        numberOfCells = number_of_cells
        cellNames = cell_names

        // initialize cells
        for i in 0...numberOfCells - 1 {
            cells.append(cell(cell_name: cell_names[i]))
        }
    }

}