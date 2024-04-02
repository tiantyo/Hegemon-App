import SwiftUI

struct ContentView: View {
    @State private var showingCredits = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("mainBackground")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all)
                ScrollView {
                    VStack(spacing: 0) {
                        Image("hegemonLogo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 250, height: 250)
                            .padding(.top, 20)
                        
                        Text("Welcome, Trailblazer!")
                            .font(.system(size: 33, weight: .bold, design: .rounded))
                            .padding()
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                        
                        Text("Feeling Super Today?")
                            .font(.system(size: 21, weight: .thin, design: .default))
                            .padding()
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                        
                        CategoryRow(categoryName: "Unleash Your Superpower", items: ["Activate Now!"])
                            .padding()
                        
                        CategoryRow(categoryName: "Superpower Unleashed", items: ["Embark on Your Mission!"])
                            .padding()
                        
                        Spacer(minLength: 20)
                        
                        Button(action: {
                            self.showingCredits = true
                        }) {
                            Text("Show Credits")
                                .font(.subheadline)
                                .padding()
                                .background(Color.black)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .multilineTextAlignment(.center)
                        }
                        .padding(.bottom, 20)
                    }
                }
            }
        }
        .sheet(isPresented: $showingCredits) {
            CreditsView()
        }
    }
}

struct CategoryRow: View {
    var categoryName: String
    var items: [String]
    
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            Text(categoryName)
                .font(.headline)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
            
            ForEach(items, id: \.self) { item in
                CategoryItem(itemName: item)
            }
        }
    }
}

struct CategoryItem: View {
    var itemName: String
    
    var body: some View {
        NavigationStack {
            NavigationLink {
                if itemName == "Activate Now!" {
                    MyQuizApp()
                } else {
                    TrackerApp()
                }
            } label: {
                Text(itemName)
                    .font(.subheadline)
                    .padding()
                    .background(itemName == "Activate Now!" ? Color.red : Color.indigo)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
