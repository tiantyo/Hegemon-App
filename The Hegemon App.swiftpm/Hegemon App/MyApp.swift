import SwiftUI

@main
struct MyApp: App {
    @StateObject private var eventData = EventData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(eventData)
            
        }
    }
}
