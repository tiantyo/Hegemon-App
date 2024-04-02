import Foundation

struct EventSymbols {
    static func randomName() -> String {
        if let random = symbolNames.randomElement() {
            return random
        } else {
            return ""
        }
    }
    
    static func randomNames(_ number: Int) -> [String] {
        var names: [String] = []
        for _ in 0..<number {
            names.append(randomName())
        }
        return names
    }
    
    static var symbolNames: [String] = [
        "square.and.pencil",
        "calendar",
        "checkmark.seal.fill",
        "books.vertical.fill",
        "target",
        "map.fill",
        "star.fill",
        "alarm.fill",
        "folder.fill",
        "hammer.fill",
        "paintpalette.fill",
        "briefcase.fill",
        "trophy.fill",
        "pin.fill",
        "house.fill",
        "building.2.fill",
        "building.columns",
        "figure.walk",
        "dumbbell.fill",
        "applelogo",
        "play.display",
        "cup.and.saucer.fill",
        "fork.knife",
        "speaker.wave.3.fill",
        "guitars.fill",
        "crown.fill",
        "figure.outdoor.cycle",
        "figure.open.water.swim",
        "tennis.racket",
        "gamecontroller.fill",
        "film.stack",
        "camera.fill",
        "scooter",
        "car.fill",
        "airplane",
        "tram",
        "leaf.fill",
        "moon.zzz.fill",
        "headphones",
        "mic.fill",
        "hourglass",
        "snowflake",
        "party.popper.fill",
        "theatermasks.fill",
        "ticket.fill",
        "pawprint.fill",
        "stethoscope",
        "globe.asia.australia.fill",
        "graduationcap.fill",
        "tent.fill",
        "rainbow",
        "ladybug.fill",
        "mountain.2.fill",
        "sailboat.fill",
        "keyboard.fill",
        "cart.fill",
        "dollarsign.square.fill",
        "sofa.fill",    
        "phone.bubble.fill",
        "trash.fill"
        
    ]
}
