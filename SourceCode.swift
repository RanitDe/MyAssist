//
//  ContentView.swift
//  MyAssist
//
//  Created by Rupaj Sen on 04/04/23.
//

import SwiftUI
import OpenAISwift

struct QuestionAndAnswer: Identifiable {
    
    let id = UUID()
    
    let question: String
    var answer: String
}

struct ContentView: View {
    
    let openAI = OpenAISwift(authToken: "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")
    
    @State private var search: String = ""
    @State private var questionAndAnswers: [QuestionAndAnswer] = []
    @State private var searching: Bool = false
    
    private func performOpenAISearch() {
        openAI.sendCompletion(with: search) { result in
            switch result {
            case .success(let success):
                
                let questionAndAnswer = QuestionAndAnswer(question: search, answer: success.choices?.first?.text.trimmingCharacters(in: .whitespacesAndNewlines) ?? "")
                
                
                questionAndAnswers.append(questionAndAnswer)
                search = ""
                searching = false
                
            case .failure(let failure):
                print(failure.localizedDescription)
                searching = false
            }
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(questionAndAnswers) { qa in
                        if qa.question.lowercased().contains(search.lowercased()) || search.isEmpty {
                            VStack(alignment: .leading, spacing: 8) {
                                Text(qa.question)
                                    .font(.headline)
                                    .foregroundColor(.primary)
                                
                                Text(qa.answer)
                                    .foregroundColor(.secondary)
                            }
                            .padding(.vertical, 10)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                }
                .padding()
                
                HStack {
                    TextField("Type here...", text: $search)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 20)
                        .background(Color.secondary.opacity(0.2))
                        .cornerRadius(10)
                        .onSubmit {
                            if !search.isEmpty {
                                searching = true
                                performOpenAISearch()
                            }
                        }
                    
                    if searching {
                        ProgressView()
                            .padding(.horizontal)
                    }
                }
                .padding(.horizontal)
                
            }
            .navigationTitle("MyAssist")
            .font(.headline)
        }
    }}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
