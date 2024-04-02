import SwiftUI

struct Event: Identifiable, Hashable {
    var id = UUID()
    var symbol: String = EventSymbols.randomName()
    var color: Color = ColorOptions.random()
    var title = ""
    var tasks = [EventTask(text: "")]
    var date = Date()
    var selectedStarCount: Int = 0
    var stickyNotes: [String] = []
    var notes: [String] = []
    
    var remainingTaskCount: Int {
        tasks.filter { !$0.isCompleted }.count
    }
    
    var isComplete: Bool {
        tasks.allSatisfy { $0.isCompleted }
    }
    
    var isPast: Bool {
        date < Date()
    }
    
    var isWithinSevenDays: Bool {
        !isPast && date < Date().addingTimeInterval(7 * 24 * 3600)
    }
    
    var isWithinSevenToThirtyDays: Bool {
        !isPast && !isWithinSevenDays && date < Date().addingTimeInterval(30 * 24 * 3600)
    }
    
    var isDistant: Bool {
        date >= Date().addingTimeInterval(30 * 24 * 3600)
    }
    
    static var example = Event(
        symbol: "book.fill",
        title: "Reading Time",
        tasks: [
            EventTask(text: "Reading Steve Jobs Biography's Book"),
            EventTask(text: "Resume Chapter 3"),
            EventTask(text: "Highlight the bold statement"),
        ],
        date: Date(timeIntervalSinceNow: 60 * 60 * 24 * 365 * 1.5))
}

extension Date {
    var sevenDaysOut: Date {
        Calendar.autoupdatingCurrent.date(byAdding: .day, value: 7, to: self) ?? self
    }
    
    var thirtyDaysOut: Date {
        Calendar.autoupdatingCurrent.date(byAdding: .day, value: 30, to: self) ?? self
    }
}
