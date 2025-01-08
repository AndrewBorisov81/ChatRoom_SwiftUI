//
//  ChatView.swift
//  ChatRoom-SwiftUI
//
//  Created by Andrew Borisov on 08.01.2025.
//

import SwiftUI

class ChatViewModel: ObservableObject {
    @Published var messages = [Message]()
    
    static let mockData = [
        Message(userUid: "12345", text: "What have you been up to1", photoURL: "", createdAt: Date()),
        Message(userUid: "12346", text: "What have you been up to2", photoURL: "", createdAt: Date()),
        Message(userUid: "12347", text: "What have you been up to3", photoURL: "", createdAt: Date()),
        Message(userUid: "12348", text: "What have you been up to4", photoURL: "", createdAt: Date())
    ]
    
}

struct ChatView: View {
    @StateObject var chatViewModel = ChatViewModel()
    
    var body: some View {
        ForEach(chatViewModel.messages) { message in
            MessageView(message: message)
        }
    }
}

#Preview {
    ChatView()
}
