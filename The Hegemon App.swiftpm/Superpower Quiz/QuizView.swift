import SwiftUI

struct QuizView: View {
    @State private var playerName = ""
    @State private var isQuizStarted = false
    @State private var totalScore = 0
    @State private var questionIndex = 0
    
    let questions: [Question] = [
        Question(text: "It's a sunny Saturday morning, and you're full of energy with the whole day ahead. Your favorite go-to place is calling, and the day is wide open. What adventure will you choose today?",
                 options: ["a. Enjoy your favorite coffee, brainstorming big ideas.", "b. Let your creativity flow with a sketchbook in the park.", "c. Dive into the digital world, exploring tech trends with coding.", "d. Connect with friends at your favorite spot, sharing stories.", "e. Embrace the outdoors, join a local cleanup to make a positive impact."],
                 scores: ["a. Enjoy your favorite coffee, brainstorming big ideas.": 1, "b. Let your creativity flow with a sketchbook in the park.": 2, "c. Dive into the digital world, exploring tech trends with coding.": 3, "d. Connect with friends at your favorite spot, sharing stories.": 4, "e. Embrace the outdoors, join a local cleanup to make a positive impact.": 5]),
        
        Question(text: "Having chilled enough at your fav go-to place, you stroll through the lively city to unwind. As you walk, suddenly, a word from social media that caught your attention comes to mind. What's that word?",
                 options: ["a. Innovify.", "b. Imaginova.", "c. Technotune.", "d. Emovibe.", "e. EcoHarmony."],
                 scores: ["a. Innovify.": 1, "b. Imaginova.": 2, "c. Technotune.": 3, "d. Emovibe.": 4, "e. EcoHarmony.": 5]),
        Question(text: "As you continue your stroll through the bustling city, you imagine encountering a real-life challenge. How would you go about tackling it?",
                 options: ["a. Eager to explore new things.", "b. Be creative, finding unique solutions.", "c. Stay logical, using tech for problem-solving.", "d. Consider emotions, understanding different views.", "e. Caring for people and the planet, seeking well-being solutions."],
                 scores: ["a. Eager to explore new things.": 1, "b. Be creative, finding unique solutions.": 2, "c. Stay logical, using tech for problem-solving.": 3, "d. Consider emotions, understanding different views.": 4, "e. Caring for people and the planet, seeking well-being solutions.": 5]),
        
        Question(text: "Passing through the park, you spot your favorite cinema's neon lights. Excited, you decide to watch a movie. What type of movie do you prefer?",
                 options: ["a. Big Enterprise Wins Movies.", "b. Beautiful Visual Stories.", "c. Sci-fi Tech Adventures.", "d. Intense Character Dramas.", "e. Nature and Eco Documentaries."],
                 scores: ["a. Big Enterprise Wins Movies.": 1, "b. Beautiful Visual Stories.": 2, "c. Sci-fi Tech Adventures.": 3, "d. Intense Character Dramas.": 4, "e. Nature and Eco Documentaries.": 5]),
        
        Question(text: "When the movie ends, as the credits roll, a quote stays with you. Which one resonates with your heart?",
                 options: ["a. Pioneers shine with groundbreaking ideas.", "b. Masterpieces begin with amateurs.", "c. Advancement progress is seamless integration.", "d. Understanding matters, walking in their shoes, feeling with their heart.", "e. We're Earth's guests, not its owners."],
                 scores: ["a. Pioneers shine with groundbreaking ideas.": 1, "b. Masterpieces begin with amateurs.": 2, "c. Advancement progress is seamless integration.": 3, "d. Understanding matters, walking in their shoes, feeling with their heart.": 4, "e. We're Earth's guests, not its owners.": 5]),
        
        Question(text: "You are leaving the cinema, the main character's vibe sticks with you. If you could take a lesson from them, what skills would you want to learn?",
                 options: ["a. Feeling motivated to take action and make things happen.", "b. Longing for a chance to express creativity in different ways.", "c. Intrigued by the tech-savvy skills of the main character.", "d. Inspired to enhance communication skills and understanding of others.", "e. Pledging to adopt a more responsible lifestyle and take care of the world around you."],
                 scores: ["a. Feeling motivated to take action and make things happen.": 1, "b. Longing for a chance to express creativity in different ways.": 2, "c. Intrigued by the tech-savvy skills of the main character.": 3, "d. Inspired to enhance communication skills and understanding of others.": 4, "e. Pledging to adopt a more responsible lifestyle and take care of the world around you.": 5]),
        
        Question(text: "Heading home from the movies, you spot your favorite bookstore. Remember that book you've been wanting to get? Which one is it?",
                 options: ["a. The Lean Startup by Eric Ries.", "b. The Da Vinci Code by Dan Brown.", "c. The Pragmatic Programmer by Dave Thomas and Andy Hunt.", "d. How to Win Friends and Influence People by Dale Carnegie.", "e. Silent Spring by Rachel Carson."],
                 scores: ["a. The Lean Startup by Eric Ries.": 1, "b. The Da Vinci Code by Dan Brown.": 2, "c. The Pragmatic Programmer by Dave Thomas and Andy Hunt.": 3, "d. How to Win Friends and Influence People by Dale Carnegie.": 4, "e. Silent Spring by Rachel Carson.": 5]),
        
        Question(text: "After snagging a new book, you jump on the bus heading home when suddenly, your friend hits you up and asks to hang out on Sunday. What fun plan do you drop?",
                 options: ["a. Join the startup workshop at a cool company.", "b. Hit up the gallery for a paint sesh, try to unleash the inner artist.", "c. Participate in a hackathon to explore tech.", "d. Volunteer to coach kids in public speaking.", "e. Join the trash clean-up squad at the car-free day fiesta."],
                 scores: ["a. Join the startup workshop at a cool company.": 1, "b. Hit up the gallery for a paint sesh, try to unleash the inner artist.": 2, "c. Participate in a hackathon to explore tech.": 3, "d. Volunteer to coach kids in public speaking.": 4, "e. Join the trash clean-up squad at the car-free day fiesta.": 5]),
        
        Question(text: "When you get home, you see a vacation brochure in the living room. You grab it, and right away, you start thinking about where you wanna go for a getaway. Any ideas?",
                 options: ["a. Soaring central business district skyscrapers and a bustling city vibe.", "b. Artsy city or a cultural countryside escape.", "c. A futuristic hub with the latest cutting-edge developments.", "d. Summer camp for making new friends and deep connections.", "e. Hiking to a mountain or exploring mesmerizing waterfalls."],
                 scores: ["a. Soaring central business district skyscrapers and a bustling city vibe.": 1, "b. Artsy city or a cultural countryside escape.": 2, "c. A futuristic hub with the latest cutting-edge developments.": 3, "d. Summer camp for making new friends and deep connections.": 4, "e. Hiking to a mountain or exploring mesmerizing waterfalls.": 5]),
        
        Question(text: "Hustling all day outside got you pretty beat. What's your go-to move to relax and unwind from a long day?",
                 options: ["a. Hit up a friend and chat about plans for a cool startup venture together.", "b. Grab the iPad and fire up a coloring app.", "c. Open the Playgrounds app on the iPad and try developing a simple app.", "d. Chill with the fam in the living room and talk about vacation plans together.", "e. Water the plants, then kick back in the backyard for tea time."],
                 scores: ["a. Hit up a friend and chat about plans for a cool startup venture together.": 1, "b. Grab the iPad and fire up a coloring app.": 2, "c. Open the Playgrounds app on the iPad and try developing a simple app.": 3, "d. Chill with the fam in the living room and talk about vacation plans together.": 4, "e. Water the plants, then kick back in the backyard for tea time.": 5]),
    ]
    var body: some View {
        VStack {
            if isQuizStarted {
                if questionIndex < questions.count {
                    QuestionView(question: questions[questionIndex], didSelectAnswer: { score in
                        totalScore += score
                        questionIndex += 1
                    })
                } else {
                    ResultView(playerName: playerName, totalScore: totalScore)
                }
            } else {
                WelcomeView(playerName: $playerName, startQuiz: {
                    isQuizStarted = true
                })
            }
        }
    }
}
