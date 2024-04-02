import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Credits:")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 10)
            
            Text("Hegemon App Developer:")
                .font(.headline)
            Text("Aptian Tyo Saputro")
                .padding(.leading, 20)
            
            Text("Assets:")
                .font(.headline)
                .padding(.top, 10)
            Text("Hegemon Logo: Drawing by Aptian Tyo Saputro using Procreate")
                .padding(.leading, 20)
            Text("Background Images: Drawn by Aptian Tyo Saputro using Procreate")
                .padding(.leading, 20)
            Text("All Superpower Badges: Designed by Aptian Tyo Saputro using Procreate")
                .padding(.leading, 20)
            
            Text("Templates:")
                .font(.headline)
                .padding(.top, 10)
            Text("The iPro-Tracker feature utilizes a template provided by Apple from the Date Planner sample app available at this website:")
                .padding(.leading, 20)
                .padding(.trailing, 20)
            
            Link("https://developer.apple.com/tutorials/sample-apps/dateplanner", destination: URL(string: "https://developer.apple.com/tutorials/sample-apps/dateplanner")!)
                .padding(.leading, 20)
                .padding(.trailing, 20)
            
            Text("which has been customized to align with the specific features and goals of the Hegemon app.")
                .padding(.leading, 20)
                .padding(.trailing, 20)
        }
        .padding()
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
