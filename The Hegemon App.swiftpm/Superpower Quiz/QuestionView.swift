import SwiftUI

struct QuestionView: View {
    let question: Question
    var didSelectAnswer: (Int) -> Void
    
    var body: some View {
        ZStack {
            Image("quizBackground").resizable().aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.all).frame(minWidth: 0, maxWidth: .infinity)
            VStack(alignment: .leading) {
                Text(question.text)
                    .font(.headline)
                    .padding()
                    .foregroundColor(.white)
                
                ForEach(question.options, id: \.self) { option in
                    Button(action: {
                        didSelectAnswer(question.score(for: option))
                    }) {
                        HStack {
                            Text(option)
                                .multilineTextAlignment(.leading)
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(Color.brown)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .padding(.horizontal)
                        }
                        .padding(.vertical, 5)
                    }
                }
            }
        }
    }
}
