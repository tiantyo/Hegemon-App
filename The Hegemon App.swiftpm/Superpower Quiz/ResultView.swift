import SwiftUI

struct ResultView: View {
    let totalScore: Int
    let playerName: String
    
    init(playerName: String, totalScore: Int) {
        self.totalScore = totalScore
        self.playerName = playerName
    }
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    Image("mainBackground")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                        .edgesIgnoringSafeArea(.all)
                    VStack {
                        Image(getResult().badgeName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300, height: 300)
                            .padding(.top, 20)
                        HStack {
                            Text(UserProfile.getPlayerName())
                                .font(.headline)
                                .foregroundColor(.white)
                            Spacer()
                            
                        }
                        .padding(.horizontal)
                        BoxWithTitle(title: "Superpower", content: getResult().resultDescription, description: getPersonalityDescription(), color: .indigo)
                        BoxWithTitle(title: "Superexpression", content: getResult().expression, description: "", color: .orange)
                        BoxWithTitle(title: "Innate Supertraits", content: getResult().innateTraits, description: "", color: .pink)
                        
                        NavigationLink(destination: RecommendationView(personality: getResult().resultDescription)) {
                            Text("Click to Activate!")
                                .padding()
                                .background(Color.red)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .padding()
                        }
                    }
                    .padding()
                }
            }
        }
    }
    
    func getResult() -> (resultDescription: String, expression: String, innateTraits: String, badgeName: String) {
        switch totalScore {
        case 10...14:
            return ("Entrepreneurial Wizard", "I’m the Bold Maverick!", "Fearless risk-taker, innovative thinker, go-getter attitude, resilience in adversity, visionary leader.", "entrepreneurialWizardBadge")
        case 15...19:
            return ("Artistic Alchemist", "I’m the Creative Conjuror!", "Imagination maestro, expressive soul, boundary-pusher, emotionally vibrant, unconventional creator.", "artisticAlchemistBadge")
        case 20...24:
            return ("Tech Sorcerer", "I’m the Digital Wizard!", "Tech-savvy genius, coding conjurer, problem-solving wizard, futuristic visionary, perpetual learner.", "techSorcererBadge")
        case 25...29:
            return ("Communication Enchantress", "I’m the Charismatic Alchemist!", "Magnetic communicator, empathetic enchantress, persuasive speaker, storytelling maestro, people connector.", "communicationEnchantressBadge")
        case 30...34:
            return ("Environmental Guardian", "I’m the Nature's Champion!", "Eco-warrior spirit, sustainability advocate, compassionate steward, earth-conscious, resilient defender.", "environmentalGuardianBadge")
        case 35...39:
            return ("Scientific Explorer", "I'm the Curiosity Voyager!", "Inquisitive mind, knowledge seeker, experimental explorer, analytical thinker, scientific trailblazer.", "scientificExplorerBadge")
        case 40...50:
            return ("Health Maven", "I'm the Wellness Trailblazer!", "Holistic healer, fitness enthusiast, mindful guru, nutrition maestro, vitality advocate.", "healthMavenBadge")
        default:
            return ("Result not available", "", "", "")
        }
    }
    
    func getPersonalityDescription() -> String {
        switch totalScore {
        case 10...14:
            return "The Entrepreneurial Wizard has the ability to turn innovative ideas into successful businesses. They can spot opportunities, navigate challenges, and create magical solutions for real-world problems, all while building a thriving empire."
        case 15...19:
            return "The Artistic Alchemist possesses the magical talent to transform ordinary materials into breathtaking works of art. With a stroke of their creative wand, they bring imagination to life, painting the world with colors and shaping emotions with sculptures."
        case 20...24:
            return "The Tech Sorcerer commands the powers of technology, conjuring up software spells and coding charms. They harness the magic of computers and devices to create digital wonders, solve complex problems, and make the world more connected."
        case 25...29:
            return "The Communication Enchantress has the ability to weave words into spells, captivating audiences with powerful speeches and compelling stories. They foster understanding, create connections, and inspire change through the art of eloquence."
        case 30...34:
            return "The Environmental Guardian is bestowed with the power to protect and nurture the planet. They can harness the forces of nature to promote sustainability, reduce pollution, and ensure the well-being of ecosystems for generations to come."
        case 35...39:
            return "The Scientific Explorer embarks on quests to unlock the mysteries of the universe. Armed with a curious mind and a trusty lab coat, they conduct experiments, make groundbreaking discoveries, and push the boundaries of human knowledge."
        case 40...50:
            return "The Health Maven has the power to promote wellness and vitality. Armed with knowledge of nutrition and fitness, they inspire others to adopt healthy habits, ensuring a world where everyone can thrive."
        default:
            return "Result not available"
        }
    }
}

struct BoxWithTitle: View {
    let title: String
    let content: String
    let description: String
    let color: Color
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
                .padding(.leading)
                .padding(.top, 10)
                .foregroundColor(.white)
            
            Text(content)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(color)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding([.horizontal, .bottom])
            
            if !description.isEmpty {
                Text(description)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding([.horizontal, .bottom])
            }
        }
    }
}
struct ResultView_Preview: PreviewProvider {
    static var previews: some View {
        ResultView(playerName: "Player Name", totalScore: 17)
    }
}
