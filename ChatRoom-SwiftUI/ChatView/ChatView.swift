//
//  ChatView.swift
//  ChatRoom-SwiftUI
//
//  Created by Andrew Borisov on 08.01.2025.
//

import SwiftUI


struct ChatView: View {
    @StateObject var chatViewModel = ChatViewModel()
    @State var text = ""
    
    var body: some View {
        VStack {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 8) {
                    ForEach(chatViewModel.mockData) { message in
                        MessageView(message: message)
                    }
                }
            }
            HStack {
                TextField("Hello there", text: $text, axis: .vertical)
                    .padding()
                
                Button() {
                    if text.count > 2 {
                        chatViewModel.sendMessage(text: text)
                        text = ""
                    }
                    
                } label: {
                    Text("Send")
                        .padding()
                        .foregroundColor(.white)
                        .background(.cyan)
                        .cornerRadius(50)
                }
                
            }
            .background(Color(uiColor: .systemGray5))
        }
    }
}

#Preview {
    ChatView()
}
