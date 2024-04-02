import SwiftUI

class EventData: ObservableObject {
    @Published var events: [Event] = [
        Event(symbol: "airplane",
              color: .blue,
              title: "Trip to Cupertino",
              tasks: [EventTask(text: "Visit the Apple Park Viistor Center"),
                      EventTask(text: "Stroll Through Cupertino Memoral Park"),
                      EventTask(text: "Discover De Anza College Fujitsu Planetarium"),
                      EventTask(text: "Shop and Dine in Cupertino Square"),
                     ],
              date: Date.roundedHoursFromNow(60 * 60 * 24 * 150)),
        Event(symbol: "play.display",
              color: .primary,
              title: "Harvard Online Course",
              tasks: [EventTask(text: "Complete week 3 assignments"),
                      EventTask(text: "Research and prepare for midterm project"),
                      EventTask(text: "Schedule virtual team discussion"),
                     ],
              date: Date.roundedHoursFromNow(60 * 60 * 24)),
        Event(symbol: "speaker.wave.3.fill",
              color: .orange,
              title: "English Speaking Practice",
              tasks: [EventTask(text: "Attending a language exchange meetup"),
                      EventTask(text: "Preparing a story to share"),
                     ],
              date: Date.roundedHoursFromNow(60 * 60 * 24 * 3)),
        Event(symbol: "briefcase.fill",
              color: .green,
              title: "Hackathon",
              tasks: [EventTask(text: "Research the hackathon theme and guidelines"),
                      EventTask(text: "Form a team"),
                      EventTask(text: "Quick team huddle"),
                      EventTask(text: "Brainstorm and outline potential project ideas"),
                      EventTask(text: "Create project roadmap"),
                     ],
              date: Date.roundedHoursFromNow(60 * 60 * 24 * 2)),
        Event(symbol: "books.vertical.fill",
              color: .pink,
              title: "Reading Time",
              tasks: [EventTask(text: "Read The Checklist Manifesto by Atul Gawande"),
                      EventTask(text: "Mark interesting passages"),
                     ],
              date: Date.roundedHoursFromNow(60 * 60 * 24 * 4)),
        Event(symbol: "applelogo",
              color: .primary,
              title: "Attending WWDC 2024",
              tasks: [
                EventTask(text: "Attending the keynote presentation"),
                EventTask(text: "Connect with fellow developers"),
                EventTask(text: "Participate in hands-on labs & code sessions"),
                EventTask(text: "See demos of new apps, technologies, and products"),
              ],
              date: Date.roundedHoursFromNow(60 * 60 * 24 * 150)),
        Event(symbol: "building.2.fill",
              color: .gray,
              title: "Visiting Silicon Valley",
              tasks: [
                EventTask(text: "Visit The Tech Interactive"),
                EventTask(text: "Startup Tour and Incubator Visit"),
                EventTask(text: "Standford University Campus Stroll"),
              ],
              date: Date.roundedHoursFromNow(60 * 60 * 24 * 150)),
        Event(symbol: "applelogo",
              color: .primary,
              title: "Attending WWDC 2023",
              tasks: [
                EventTask(text: "Attending tech talks & sessions"),
                EventTask(text: "Participate in hands-on code labs & workshops"),
                EventTask(text: "Connect with fellow developers"),
                EventTask(text: "See demos of new apps, technologies, and products"),
              ],
          date: Date.from(month: 6, day: 6, year: 2023)),
        Event(symbol: "gamecontroller.fill",
              color: .indigo,
              title: "Swift Student Challenge 2024",
              tasks: [
                EventTask(text: "Learning Swift Playgrounds"),
                EventTask(text: "Watching some tutorials on YouTube"),
                EventTask(text: "Build a unique yet creative app"),
              ],
              date: Date.roundedHoursFromNow(60 * 60 * 24 * 7)),
    ]
    
    func delete(_ event: Event) {
        events.removeAll { $0.id == event.id }
    }
    
    func add(_ event: Event) {
        events.append(event)
    }
    
    func exists(_ event: Event) -> Bool {
        events.contains(event)
    }
    
    func sortedEvents(period: Period) -> Binding<[Event]> {
        Binding<[Event]>(
            get: {
                self.events
                    .filter {
                        switch period {
                        case .nextSevenDays:
                            return $0.isWithinSevenDays
                        case .nextThirtyDays:
                            return $0.isWithinSevenToThirtyDays
                        case .future:
                            return $0.isDistant
                        case .past:
                            return $0.isPast
                        }
                    }
                    .sorted { $0.date < $1.date }
            },
            set: { events in
                for event in events {
                    if let index = self.events.firstIndex(where: { $0.id == event.id }) {
                        self.events[index] = event
                    }
                }
            }
        )
    }
}

enum Period: String, CaseIterable, Identifiable {
    case nextSevenDays = "Weekly Adventure"
    case nextThirtyDays = "Monthly Exploration"
    case future = "Annual Odyssey"
    case past = "Nicely Done"
    
    var id: String { self.rawValue }
    var name: String { self.rawValue }
}

extension Date {
    static func from(month: Int, day: Int, year: Int) -> Date {
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day
        
        let calendar = Calendar(identifier: .gregorian)
        if let date = calendar.date(from: dateComponents) {
            return date
        } else {
            return Date()
        }
    }
    
    static func roundedHoursFromNow(_ hours: Double) -> Date {
        let exactDate = Date(timeIntervalSinceNow: hours)
        guard let hourRange = Calendar.current.dateInterval(of: .hour, for: exactDate) else {
            return exactDate
        }
        return hourRange.end
    }
}


