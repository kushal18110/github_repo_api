//
//  ContentView.swift
//  github_repo_api
//
//  Created by Kushal Parekh on 04/10/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var searchText: String = ""
    
    var body: some View {
        NavigationStack {
            List {
                VStack (alignment: .center) {
                    Circle()
                        .frame(width: 100, height: 100)
                        .padding(.top, 5)
                    
                    Text("user name")
                        .font(.largeTitle)
                    
                    Text("bio")
                        .font(.title2)
                        .padding(.top, 5)
                }
                .frame(maxWidth: .infinity)
                
                Section(header: Text("Repositories")) {
                    ForEach(0...10, id: \.self){item in
                        repoDetails()
                    }
                }
                
            }
            .searchable(text: $searchText)
        }
    }
    
    @ViewBuilder
    func repoDetails() -> some View {
        VStack (alignment: .leading,  spacing: 7) {
            Text("Repository name")
            
            Text("Description")
                .lineLimit(2)
            
            Text("created at")
                .font(.caption)
            
            HStack (spacing: 20){
                HStack {
                    Image(systemName: "star")
                        .foregroundStyle(Color.orange)
                    Text("\(Int.random(in: 1...10))")
                }
                
                HStack {
                    Image(systemName: "eye")
                        .foregroundStyle(Color.gray)
                    Text("\(Int.random(in: 1...20))")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
