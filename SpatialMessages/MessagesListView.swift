//
//  MessagesListView.swift
//  SpatialMessages
//
//  Created by Michał Talaga on 10/04/2025.
//

import SwiftUI

struct MessagesListView: View {
    let messages = [
        MessageRow(name: "Miranda Atkins", preview: "Hello, Michał! I have some questions about our last projects...", time: "4:21 PM", icon: "Contact1"),
        MessageRow(name: "John Smith", preview: "Hey, just wanted to let you know I’ll be a bit late to the meeting. Sorry for the...", time: "3:50 PM", icon: "Contact2"),
        MessageRow(name: "Emily Johnson", preview: "Hi! How’s your day going? Let’s catch up over coffee soon. Miss you!", time: "1 day ago", icon: "Contact3"),
        MessageRow(name: "Michael Brown", preview: "Don’t forget about the project deadline tomorrow. We need to finish the last part.", time: "3 days ago", icon: "Contact4"),
        MessageRow(name: "Sarah Davis", preview: "Are you free this weekend? Let’s plan a trip to the beach. It’ll be fun!", time: "3 days ago", icon: "Contact5"),
        MessageRow(name: "David Wilson", preview: "Happy Birthday! Hope you have an amazing day filled with joy and surprises.", time: "5 days ago", icon: "Contact6"),
        MessageRow(name: "Laura Martinez", preview: "Can you pick up some groceries on your way home? We’re out of milk and bread.", time: "6 days ago", icon: "Contact7"),
        MessageRow(name: "Chris Anderson", preview: "Great job on the presentation today! Your hard work really paid off.", time: "1 week ago", icon: "Contact8"),
        MessageRow(name: "Miranda Atkins", preview: "Hello, Michał! I have some questions about our last projects...", time: "4:21 PM", icon: "Contact1"),
        MessageRow(name: "John Smith", preview: "Hey, just wanted to let you know I’ll be a bit late to the meeting. Sorry for the...", time: "3:50 PM", icon: "Contact2"),
        MessageRow(name: "Emily Johnson", preview: "Hi! How’s your day going? Let’s catch up over coffee soon. Miss you!", time: "1 day ago", icon: "Contact3"),
        MessageRow(name: "Michael Brown", preview: "Don’t forget about the project deadline tomorrow. We need to finish the last part.", time: "3 days ago", icon: "Contact4"),
        MessageRow(name: "Sarah Davis", preview: "Are you free this weekend? Let’s plan a trip to the beach. It’ll be fun!", time: "3 days ago", icon: "Contact5"),
        MessageRow(name: "David Wilson", preview: "Happy Birthday! Hope you have an amazing day filled with joy and surprises.", time: "5 days ago", icon: "Contact6"),
        MessageRow(name: "Laura Martinez", preview: "Can you pick up some groceries on your way home? We’re out of milk and bread.", time: "6 days ago", icon: "Contact7"),
        MessageRow(name: "Chris Anderson", preview: "Great job on the presentation today! Your hard work really paid off.", time: "1 week ago", icon: "Contact8")
    ]
    
    var body: some View {
        VStack(spacing: 16) {
            NavigationStack {
                ForEach(messages) { message in
                    MessageRowView(message: message)
                }
            }
           
        }
        .padding(.horizontal, 20)
        
    }
}
#Preview {
    MessagesListView()
}
