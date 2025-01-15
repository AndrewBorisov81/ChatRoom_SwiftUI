//
//  ChatViewModel.swift
//  ChatRoom-SwiftUI
//
//  Created by Andrew Borisov on 15.01.2025.
//

import Foundation

class ChatViewModel: ObservableObject {
    @Published var messages = [Message]()
    
    @Published var mockData = [
        Message(userUid: "12345", text: "What have you been up to1", photoURL: "", createdAt: Date()),
        Message(userUid: "12346", text: "What have you been up to2", photoURL: "", createdAt: Date()),
        Message(userUid: "12347", text: "What have you been up to3", photoURL: "", createdAt: Date()),
        Message(userUid: "12348", text: "What have you been up to4", photoURL: "", createdAt: Date()),
        Message(userUid: "12345", text: "What have you been up to1", photoURL: "", createdAt: Date()),
        Message(userUid: "12346", text: "What have you been up to2", photoURL: "", createdAt: Date()),
        Message(userUid: "12347", text: "What have you been up to3", photoURL: "", createdAt: Date()),
        Message(userUid: "12348", text: "What have you been up to4", photoURL: "", createdAt: Date()),
        Message(userUid: "12348", text: "What have you been up to4", photoURL: "", createdAt: Date()),
        Message(userUid: "12345", text: "What have you been up to1", photoURL: "", createdAt: Date()),
        Message(userUid: "12346", text: "What have you been up to2", photoURL: "", createdAt: Date()),
        Message(userUid: "12347", text: "What have you been up to3", photoURL: "", createdAt: Date()),
        Message(userUid: "12348", text: "What have you been up to4", photoURL: "", createdAt: Date())
    ]
    
    func sendMessage(text: String) {
        print(text)
    }
    
}

