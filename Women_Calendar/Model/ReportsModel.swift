//
//  ReportsModel.swift
//  Women_Calendar
//
//  Created by Abdulloh on 09/12/22.
//

import Foundation

struct ReportModel: Identifiable {
    let id = UUID()
    let date: String
    let cycle: String
    let days: [Days]
}

struct Days: Identifiable {
    let id = UUID()
    let date: String
    let day: Int
    let intensivity: Int
    let comment: String
    let details: String
    let events: String
}
