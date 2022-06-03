//
//  Task.swift
//  CustomPopUp
//
//  Created by Snow Lukin on 03.06.2022.
//

import Foundation

struct Task: Identifiable {
    var id = UUID().uuidString
    var title: String
    var description: String
}

// MARK: Samples
var tasks: [Task] = [
    Task(title: "One", description: "This is one"),
    Task(title: "Two", description: "This is two"),
    Task(title: "Three", description: "This is three"),
    Task(title: "Four", description: "This is four"),
    Task(title: "Five", description: "This is five"),
    Task(title: "Six", description: "This is six"),
    Task(title: "Seven", description: "This is seven"),
    Task(title: "Eight", description: "This is eight"),
    Task(title: "Nine", description: "This is nine")
]
