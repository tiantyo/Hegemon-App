import SwiftUI

struct TrackerApp: View {
    @StateObject private var eventData = EventData()
    
    var body: some View {
        EventList()
            .environmentObject(eventData)
    }   
}
