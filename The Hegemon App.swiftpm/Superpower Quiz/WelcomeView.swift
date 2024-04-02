import SwiftUI

struct WelcomeView: View {
    @Binding var playerName: String
    var startQuiz: () -> Void
    
    var body: some View {
        ZStack {
            Image("startQuizBackground")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            ScrollView { 
                VStack {
                    Image("hegemonLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250, height: 250)
                        .padding(.top, 20)
                    
                    Text("Ready to Unleash Your Superpower?")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    TextField("Enter your supername . . .", text: $playerName)
                        .padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button(action: {
                        if !playerName.isEmpty {
                            UserProfile.setPlayerName(name: playerName)
                            startQuiz()
                        }
                    }) {
                        Text("Let's Find Out!")
                    }
                    .padding()
                    .buttonStyle(.borderedProminent)
                    .disabled(playerName.isEmpty)
                    
                    NavigationLink(destination: SuperPowerListView()) {
                        HStack {
                            Text("Superpowers Showcase")
                                .font(.headline)
                                .foregroundColor(.blue)
                            Image(systemName: "arrow.right.circle")
                                .font(.title)
                                .foregroundColor(.blue)
                        }
                    }
                    .padding()
                }
                .padding()
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(playerName: .constant(""), startQuiz: {})
    }
}
