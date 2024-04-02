import SwiftUI

struct SuperPowerListView: View {
    let superpowers = [
        "Entrepreneurial Wizard",
        "Artistic Alchemist",
        "Tech Sorcerer",
        "Communication Enchantress",
        "Environmental Guardian",
        "Scientific Explorer",
        "Health Maven"
    ]
    
    var body: some View {
        ZStack {
            Image("mainBackground")
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
                    
                    ForEach(superpowers, id: \.self) { superpower in
                        NavigationLink(destination: ResultView(playerName: "", totalScore: self.getSuperpowerScore(superpower))) {
                            HStack {
                                Text(superpower)
                                    .padding()
                                    .multilineTextAlignment(.leading)
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .padding()
                            }
                            .foregroundColor(.white)
                            .background(Color.indigo)
                            .cornerRadius(10)
                            .padding([.horizontal, .bottom])
                        }
                    }
                }
                .padding()
            }
        }
        .navigationTitle("Superpowers Showcase")
    }
    
    func getSuperpowerScore(_ superpower: String) -> Int {
        switch superpower {
        case "Entrepreneurial Wizard":
            return 10
        case "Artistic Alchemist":
            return 15
        case "Tech Sorcerer":
            return 20
        case "Communication Enchantress":
            return 25
        case "Environmental Guardian":
            return 30
        case "Scientific Explorer":
            return 35
        case "Health Maven":
            return 40
        default:
            return 0
        }
    }
}

struct SuperPowerListView_Previews: PreviewProvider {
    static var previews: some View {
        SuperPowerListView()
    }
}
