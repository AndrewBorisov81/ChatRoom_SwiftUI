//
//  SignInView.swift
//  ChatRoom-SwiftUI
//
//  Created by Andrew Borisov on 15.01.2025.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        VStack (spacing: 60){
            Image("town2")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: 400, maxHeight: 500, alignment: .top)
                .clipped()
            
            Spacer()
            
            VStack (spacing: 20){
                Button() {
                    print("apple")
                } label: {
                    Text("Sign in with Apple")
                        .padding()
                        .foregroundColor(.primary)
                        .overlay{
                            RoundedRectangle(cornerRadius: 20)
                                .stroke()
                                .foregroundColor(.primary)
                                .frame(width: 300)
                        }
                }
                .frame(width: 300)
                
                Button() {
                    print("google")
                } label: {
                    Text("Sign in with Google")
                        .padding()
                        .foregroundColor(.primary)
                        .overlay{
                            RoundedRectangle(cornerRadius: 20)
                                .stroke()
                                .foregroundColor(.primary)
                                .frame(width: 300)
                        }
                }
                .frame(width: 300)
            }
           Spacer()
        }
        .edgesIgnoringSafeArea(.top)
    }
}

#Preview {
    SignInView()
}

