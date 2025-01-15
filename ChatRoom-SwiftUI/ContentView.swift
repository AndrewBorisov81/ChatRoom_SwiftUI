//
//  ContentView.swift
//  ChatRoom-SwiftUI
//
//  Created by Andrew Borisov on 07.01.2025.
//

import SwiftUI

struct ContentView: View {
    @State var showSignIn: Bool = true
    var body: some View {
        NavigationStack {
            
            ZStack {
                ChatView()
            }
            .navigationTitle("Chatroom")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                       print("Sign Out")
                    } label: {
                        Text("Sign Out")
                    }
                }
                
            }
        }
        .fullScreenCover(isPresented: $showSignIn) {
            SignInView()
        }
    }
}

#Preview {
    ContentView()
}
