struct Question {
    let text: String
    let options: [String]
    let scores: [String: Int]
    
    func score(for option: String) -> Int {
        return scores[option] ?? 0
    }
}
