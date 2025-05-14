//
//  MessageRowView.swift
//  SpatialMessages
//
//  Created by Michał Talaga on 09/04/2025.
//

import SwiftUI

struct MessageRow: Identifiable {
    let id = UUID()
    let name: String
    let preview: String
    let time: String
    let icon: String?
}

struct MessageRowView: View {
    let message: MessageRow
    
    var body: some View {
        NavigationLink(destination: ChatView()) {
            VStack {
                HStack(alignment: .center, spacing: 12) {
                    Circle()
                        .frame(width: 54, height: 54)
                        .overlay(
                            Image(message.icon ?? "Contact1")
                                .resizable()
                        )
                    VStack(alignment: .leading) {
                        HStack {
                            Text(message.name)
                                .font(.headline)
                                .foregroundColor(.primary)
                            Spacer()
                            Text(message.time)
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        Text(message.preview)
                            .font(.subheadline)
                            .lineLimit(2)
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray.opacity(0.5))
                
            }
        }
    }
}

#Preview {
    MessageRowView(message: MessageRow(name: "John Clarkson", preview: "Hi mate, trala trala trala today is going to be a great day!", time: "4:21", icon: "Contact1"))
}
