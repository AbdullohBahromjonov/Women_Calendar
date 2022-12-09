//
//  ReportsViewModel.swift
//  Women_Calendar
//
//  Created by Abdulloh on 09/12/22.
//

import Foundation

let reports = [
    ReportModel(
        date: "02.12.2022",
        cycle: "last menstrual cycle - 12 days",
        days: [
            Days(date: "02.12.2022", day: 1, intensivity: 2, comment: "-", details: "-", events: "-"),
            Days(date: "03.12.2022", day: 2, intensivity: 3, comment: "-", details: "-", events: "-"),
            Days(date: "04.12.2022", day: 3, intensivity: 4, comment: "-", details: "-", events: "-"),
            Days(date: "05.12.2022", day: 4, intensivity: 1, comment: "-", details: "-", events: "-"),
        ]
    ),
    ReportModel(
        date: "21.11.2022",
        cycle: "last menstrual cycle - 12 days",
        days: [
            Days(date: "21.12.2022", day: 1, intensivity: 2, comment: "-", details: "-", events: "-"),
            Days(date: "22.12.2022", day: 2, intensivity: 3, comment: "-", details: "-", events: "-"),
            Days(date: "23.12.2022", day: 3, intensivity: 4, comment: "-", details: "-", events: "-"),
            Days(date: "24.12.2022", day: 4, intensivity: 1, comment: "-", details: "-", events: "-"),
        ]
    ),
    ReportModel(
        date: "10.11.2022",
        cycle: "The first details",
        days: [
            Days(date: "10.12.2022", day: 1, intensivity: 2, comment: "-", details: "-", events: "-"),
            Days(date: "11.12.2022", day: 2, intensivity: 3, comment: "-", details: "-", events: "-"),
            Days(date: "12.12.2022", day: 3, intensivity: 4, comment: "-", details: "-", events: "-"),
            Days(date: "13.12.2022", day: 4, intensivity: 1, comment: "-", details: "-", events: "-"),
        ]
    )
]
