//
//  Message.swift
//  ChatRoom-SwiftUI
//
//  Created by Andrew Borisov on 08.01.2025.
//

import SwiftUI


struct MessageView: View {
    var message: Message
    var isFromCurrentUser: Bool = true
    
    var body: some View {
        if message.isFromCurrentUser() {
            HStack {
                
                HStack {
                    Text(message.text)
                        .padding()
                }
                .frame(maxWidth: 260, alignment: .topLeading)
                .background(.blue)
                .cornerRadius(20)
                
                Image(systemName: "person")
                    .frame(maxHeight: 32, alignment: .top)
                    .padding(.bottom, 12)
                    .padding(.leading, 4)
            }
            .frame(maxWidth: 360, alignment: .trailing)
        } else {
            HStack {
                Image(systemName: "person")
                    .frame(maxHeight: 32, alignment: .top)
                    .padding(.bottom, 12)
                    .padding(.trailing, 4)
                
                HStack {
                    Text(message.text)
                        .padding()
                }
                .frame(maxWidth: 260, alignment: .leading)
                .background(.gray)
                .cornerRadius(20)
            }
            .frame(maxWidth: 360, alignment: .leading)
        }
    }
}

#Preview {
    MessageView(message: Message(userUid: "123", text: "Hello this is a message from me", photoURL: "", createdAt: Date()))
}

