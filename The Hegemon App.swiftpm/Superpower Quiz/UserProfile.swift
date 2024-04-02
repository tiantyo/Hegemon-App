import Foundation

class UserProfile {
    static func setPlayerName(name: String) {
        let key = UserKey.playerName
        UserDefaults.standard.setValue(name, forKey: key.rawValue)
    }
    static func getPlayerName() -> String {
        let key = UserKey.playerName
        return UserDefaults.standard.string(forKey: key.rawValue) ?? ""
    }
}
enum UserKey: String {
    case playerName 
}
