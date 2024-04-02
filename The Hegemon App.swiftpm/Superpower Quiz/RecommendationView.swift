import SwiftUI

struct RecommendationView: View {
    let personality: String
    let activateSuperpower = [
        "Book Recommendations",
        "Movie Recommendations",
        "Series Recommendations",
        "Podcast Recommendations",
        "Major Study Recommendations"
    ]
    
    var body: some View {
        NavigationStack {
            List(activateSuperpower, id: \.self) { menu in
                NavigationLink(destination: SectionView(title: menu, recommendations: getRecommendations(for: menu))) {
                    Text(menu)
                }
            }
        } 
    }
    
    private func getRecommendations(for menu: String) -> [String] {
        switch menu {
        case "Book Recommendations":
            return getBookRecommendations()
        case "Movie Recommendations":
            return getMovieRecommendations()
        case "Series Recommendations":
            return getSeriesRecommendations()
        case "Podcast Recommendations":
            return getPodcastRecommendations()
        case "Major Study Recommendations":
            return getMajorStudyRecommendations()
        default:
            return []
        }
    }
    
    private func getBookRecommendations() -> [String] {
        switch personality {
        case "Entrepreneurial Wizard":
            return [
                "📖 The Lean Startup by Eric Ries",
                "📖 Zero to One by Peter Thiel",
                "📖 The Innovator's Dilemma by Clayton M. Christensen",
                "📖 Start with Why by Simon Sinek",
                "📖 How to Win Friends and Influence People by Dale Carnegie"
            ]
        case "Artistic Alchemist":
            return [
                "📖 The War of Art by Steven Pressfield",
                "📖 Steal Like an Artist by Austin Kleon",
                "📖 Color and Light by James Gurney",
                "📖 The Artist's Way by Julia Cameron",
                "📖 The Creative's Guide to Starting a Business by Harriet Kelsall"
            ]
        case "Tech Sorcerer":
            return [
                "📖 Clean Code by Robert C. Martin",
                "📖 Code Complete by Steve McConnell",
                "📖 The Pragmatic Programmer by Andrew Hunt and David Thomas",
                "📖 The Mythical Man-Month by Frederick P. Brooks Jr.",
                "📖 Design Patterns by Erich Gamma"
            ]
        case "Communication Enchantress":
            return [
                "📖 Talk Like TED by Carmine Gallo",
                "📖 Made to Stick by Chip Heath and Dan Heath",
                "📖 The Elements of Style by William Strunk Jr. and E.B. White",
                "📖 Influence: The Psychology of Persuasion by Robert B. Cialdini",
                "📖 Dale Carnegie's Lifetime Plan for Success by Dale Carnegie"
            ]
        case "Environmental Guardian":
            return [
                "📖 Silent Spring by Rachel Carson",
                "📖 This Changes Everything by Naomi Klein",
                "📖 Braiding Sweetgrass by Robin Wall Kimmerer",
                "📖 The Sixth Extinction by Elizabeth Kolbert",
                "📖 Doughnut Economics by Kate Raworth"
            ]
        case "Scientific Explorer":
            return [
                "📖 Cosmos by Carl Sagan",
                "📖 A Short History of Nearly Everything by Bill Bryson",
                "📖 The Elegant Universe by Brian Greene",
                "📖 Sapiens: A Brief History of Humankind by Yuval Noah Harari",
                "📖 The Immortal Life of Henrietta Lacks by Rebecca Skloot"
            ]
        case "Health Maven":
            return [
                "📖 The Blue Zones by Dan Buettner",
                "📖 How Not to Die by Michael Greger",
                "📖 The China Study by T. Colin Campbell",
                "📖 You Are What You Eat by Gillian McKeith",
                "📖 Eat, Pray, Love by Elizabeth Gilbert"
            ]
        default:
            return []
        }
    }
    
    private func getMovieRecommendations() -> [String] {
        switch personality {
        case "Entrepreneurial Wizard":
            return [
                "🎬 The Social Network (Available on Netflix)",
                "🎬 Pirates of Silicon Valley (Available on Amazon Prime)",
                "🎬 Moneyball (Available on Netflix)",
                "🎬 The Pursuit of Happyness (Available on Netflix)",
                "🎬 Joy (Available on Hulu)"
            ]
        case "Artistic Alchemist":
            return [
                "🎬 Frida (Available on Hulu)",
                "🎬 Big Eyes (Available on Hulu)",
                "🎬 Loving Vincent (Available on Amazon Prime)",
                "🎬 Exit Through the Gift Shop (Available on Hulu)",
                "🎬 Basquiat (Available on HBO Max)"
            ]
        case "Tech Sorcerer":
            return [
                "🎬 The Imitation Game (Available on Netflix)",
                "🎬 The Matrix (Available on Hulu)",
                "🎬 Hackers (Available on Amazon Prime)",
                "🎬 The Social Dilemma (Available on Netflix)",
                "🎬 Jobs (Available on Hulu)"
            ]
        case "Communication Enchantress":
            return [
                "🎬 The King's Speech (Available on Netflix)",
                "🎬 The Great Debaters (Available on Hulu)",
                "🎬 The Speeches of TED Talks (Available on TED's website)",
                "🎬 The Pursuit of Happyness (Available on Netflix) 🎬",
                "🎬 Dead Poets Society (Available on Disney+)"
            ]
        case "Environmental Guardian":
            return [
                "🎬 An Inconvenient Truth (Available on Hulu)",
                "🎬 Before the Flood (Available on Disney+)",
                "🎬 Chasing Ice (Available on Amazon Prime)",
                "🎬 Our Planet (Available on Netflix)",
                "🎬 The True Cost (Available on Amazon Prime)"
            ]
        case "Scientific Explorer":
            return [
                "🎬 Apollo 13 (Available on Hulu)",
                "🎬 The Theory of Everything (Available on Netflix)",
                "🎬 Contact (Available on HBO Max)",
                "🎬 The Martian (Available on Amazon Prime)",
                "🎬 Hidden Figures (Available on Disney+)"
            ]
        case "Health Maven":
            return [
                "🎬 Super Size Me (Available on Hulu)",
                "🎬 Forks Over Knives (Available on Netflix)",
                "🎬 Fat, Sick & Nearly Dead (Available on Amazon Prime)",
                "🎬 Food, Inc. (Available on Hulu)",
                "🎬 That Sugar Film (Available on Amazon Prime)"
            ]
        default:
            return []
        }
    }
    
    private func getSeriesRecommendations() -> [String] {
        switch personality {
        case "Entrepreneurial Wizard":
            return [
                "🎞️ Shark Tank (Available on Hulu)",
                "🎞️ Silicon Valley (Available on HBO)",
                "🎞️ The Profit (Available on Hulu)",
                "🎞️ Billions (Available on Showtime)",
                "🎞️ Startup (Available on Crackle)"
            ]
        case "Artistic Alchemist":
            return [
                "🎞️ Abstract: The Art of Design (Available on Netflix)",
                "🎞️ Work of Art: The Next Great Artist (Available on Amazon Prime)",
                "🎞️ Art: 21 (Available on PBS)",
                "🎞️ The Joy of Painting with Bob Ross (Available on Amazon Prime)",
                "🎞️ Great Art (Available on Hulu)"
            ]
        case "Tech Sorcerer":
            return [
                "🎞️ Mr. Robot (Available on Amazon Prime)",
                "🎞️ Halt and Catch Fire (Available on Netflix)",
                "🎞️ Silicon Valley (Available on HBO) 🎞️",
                "🎞️ Black Mirror (Available on Netflix)",
                "🎞️ Westworld (Available on HBO)"
            ]
        case "Communication Enchantress":
            return [
                "🎞️ The West Wing (Available on HBO Max)",
                "🎞️ The Crown (Available on Netflix)",
                "🎞️ Mad Men (Available on Amazon Prime)",
                "🎞️ TED Talks: The Education Revolution (Available on Netflix)",
                "🎞️ Black Mirror: Nosedive (Available on Netflix)"
            ]
        case "Environmental Guardian":
            return [
                "🎞️ Years of Living Dangerously (Available on Hulu)",
                "🎞️ Rotten (Available on Netflix)",
                "🎞️ Planet Earth II (Available on BBC America)",
                "🎞️ Our Planet (Available on Netflix)",
                "🎞️ Breaking Boundaries: The Science of Our Planet (Available on Netflix)"
            ]
        case "Scientific Explorer":
            return [
                "🎞️ Cosmos: A Spacetime Odyssey (Available on Disney+)",
                "🎞️ Breaking Bad (Available on Netflix)",
                "🎞️ The X-Files (Available on Hulu)",
                "🎞️ Stranger Things (Available on Netflix)",
                "🎞️ Bill Nye Saves the World (Available on Netflix)"
            ]
        case "Health Maven":
            return [
                "🎞️ Rotten (Available on Netflix) 🎞️",
                "🎞️ Cooked (Available on Netflix)",
                "🎞️ The Game Changers (Available on Netflix)",
                "🎞️ Salt, Fat, Acid, Heat (Available on Netflix)",
                "🎞️ Chef's Table (Available on Netflix)"
            ]
        default:
            return []
        }
    }
    
    private func getPodcastRecommendations() -> [String] {
        switch personality {
        case "Entrepreneurial Wizard":
            return [
                "🎙️ How I Built This (Available on Spotify)",
                "🎙️ The Tim Ferriss Show (Available on Spotify)",
                "🎙️ StartUp Podcast (Available on Spotify)",
                "🎙️ The GaryVee Audio Experience (Available on Spotify)",
                "🎙️ Smart Passive Income (Available on Spotify)"
            ]
        case "Artistic Alchemist":
            return [
                "🎙️ Art Juice (Available on Spotify)",
                "🎙️ The Jealous Curator: ART FOR YOUR EAR (Available on Spotify)",
                "🎙️ The Savvy Painter Podcast (Available on Spotify)",
                "🎙️ Art Grind (Available on Spotify)",
                "🎙️ Art Detective (Available on Spotify)"
            ]
        case "Tech Sorcerer":
            return [
                "🎙️ Syntax - Tasty Web Development Treats (Available on Spotify)",
                "🎙️ CodeNewbie (Available on Spotify)",
                "🎙️ Software Engineering Daily (Available on Spotify)",
                "🎙️ ShopTalk Show (Available on Spotify)",
                "🎙️ The Changelog (Available on Spotify)"
            ]
        case "Communication Enchantress":
            return [
                "🎙️ The Art of Charm (Available on Spotify)",
                "🎙️ The Moth (Available on Spotify)",
                "🎙️ Talk Nerdy with Cara Santa Maria (Available on Spotify)",
                "🎙️ The Public Speaker's Quick and Dirty Tips for Improving Your Communication Skills (Available on Spotify)",
                "🎙️ The Vocal Fries Podcast (Available on Spotify)"
            ]
        case "Environmental Guardian":
            return [
                "🎙️ Sustainable World Radio (Available on Spotify)",
                "🎙️ The Regenerative Journey with Charlie Arnott (Available on Spotify)",
                "🎙️ Bioneers: Revolution from the Heart of Nature (Available on Spotify)",
                "🎙️ The Green Dreamer (Available on Spotify)",
                "🎙️ The Permaculture Podcast (Available on Spotify)"
            ]
        case "Scientific Explorer":
            return [
                "🎙️ StartUp Podcast (Available on Spotify) 🎙️",
                "🎙️ Science Vs (Available on Spotify)",
                "🎙️ Radiolab (Available on Spotify)",
                "🎙️ TED Talks Science and Medicine (Available on Spotify)",
                "🎙️ The Infinite Monkey Cage (Available on Spotify)"
            ]
        case "Health Maven":
            return [
                "🎙️ The Model Health Show (Available on Spotify)",
                "🎙️ FoundMyFitness (Available on Spotify)",
                "🎙️ Bulletproof Radio (Available on Spotify)",
                "🎙️ The Rich Roll Podcast (Available on Spotify)",
                "🎙️ The Mind Pump Podcast (Available on Spotify)"
            ]
        default:
            return []
        }
    }
    
    private func getMajorStudyRecommendations() -> [String] {
        switch personality {
        case "Entrepreneurial Wizard":
            return [
                "🎓 Business Administration",
                "🎓 Entrepreneurship",
                "🎓 Innovation Management",
                "🎓 Marketing",
                "🎓 Economics"
            ]
        case "Artistic Alchemist":
            return [
                "🎓 Fine Arts",
                "🎓 Graphic Design",
                "🎓 Architecture",
                "🎓 Interior Design",
                "🎓 Illustration & Animation"
            ]
        case "Tech Sorcerer":
            return [
                "🎓 Computer Science",
                "🎓 Software Engineering",
                "🎓 Data Science",
                "🎓 Information Technology",
                "🎓 Cybersecurity"
            ]
        case "Communication Enchantress":
            return [
                "🎓 Communication Studies",
                "🎓 Media and Journalism",
                "🎓 Public Relations",
                "🎓 International Relations",
                "🎓 Digital Media"
            ]
        case "Environmental Guardian":
            return [
                "🎓 Environmental Science",
                "🎓 Conservation Biology",
                "🎓 Sustainability Studies",
                "🎓 Environmental Policy",
                "🎓 Renewable Energy"
            ]
        case "Scientific Explorer":
            return [
                "🎓 Natural Sciences",
                "🎓 Biotechnology",
                "🎓 Biomedical Engineering",
                "🎓 Astronomy",
                "🎓 Neuroscience"
            ]
        case "Health Maven":
            return [
                "🎓 Medical",
                "🎓 Nutrition and Dietetics",
                "🎓 Public Health",
                "🎓 Nursing",
                "🎓 Biomedical Sciences"
            ]
        default:
            return []
        }
    }
}
struct SectionView: View {
    let title: String
    let recommendations: [String]
    
    var body: some View {
            VStack(alignment: .leading) {
                List(recommendations, id: \.self) { recommendation in
                    NavigationLink(destination: RecommendationDetailView(recommendation: recommendation, description: getDescriptionForRecommendation(recommendation))) {
                        Text(recommendation)
                    }
                }
            }    
            .navigationTitle(title)
        }
        
        
    }
    
    struct RecommendationDetailView: View {
        let recommendation: String
        let description: String
        
        var body: some View {
            VStack(alignment: .leading) {
                
                Text(description)
                    .padding(.top, 16)
                Spacer()
            }
            .padding()
            .navigationTitle(recommendation)
        }
    }
struct RecommendationView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendationView(personality: "Communication Enchantress")
        
    }
}

