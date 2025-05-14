import SwiftUI

struct ChatView: View {
    let currentUsername = "alice"

    let sampleMessages: [SingleMessage] = [
        SingleMessage(id: UUID(), sender: "alice", content: "Hey Bob, are you free for a call later today?", isCurrentUser: true),
        SingleMessage(id: UUID(), sender: "bob", content: "Hey Alice! Sure, I’m free after 3 PM. Does that work for you?", isCurrentUser: false),
        SingleMessage(id: UUID(), sender: "alice", content: "Perfect, let’s talk then. I’ll send you a meeting link.", isCurrentUser: true),
        SingleMessage(id: UUID(), sender: "bob", content: "Sounds good, talk to you later!", isCurrentUser: false),
        SingleMessage(id: UUID(), sender: "alice", content: "Hey, just sent the link. Let me know when you're ready.", isCurrentUser: true),
        SingleMessage(id: UUID(), sender: "bob", content: "Got it, joining now!", isCurrentUser: false),
        SingleMessage(id: UUID(), sender: "alice", content: "Great! So, about the new project — I reviewed the initial proposal.", isCurrentUser: true),
        SingleMessage(id: UUID(), sender: "bob", content: "Awesome. Do you think it's something we can realistically finish by June?", isCurrentUser: false),
        SingleMessage(id: UUID(), sender: "alice", content: "If we get started next week, I’d say yes. But we’ll need at least one more developer.", isCurrentUser: true),
        SingleMessage(id: UUID(), sender: "bob", content: "I might know someone. Want me to reach out?", isCurrentUser: false),
        SingleMessage(id: UUID(), sender: "alice", content: "Yes please. Let’s aim to finalize the team by Friday.", isCurrentUser: true),
        SingleMessage(id: UUID(), sender: "bob", content: "On it. I’ll get back to you tomorrow.", isCurrentUser: false),
        SingleMessage(id: UUID(), sender: "alice", content: "Thanks! Talk soon 👋", isCurrentUser: true),
        SingleMessage(id: UUID(), sender: "bob", content: "Bye 👋", isCurrentUser: false)
    ]
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(sampleMessages) { message in
                    MessageBubbleView(message: message)
                }
            }
            .padding(.vertical)
        }
        .background(Color.clear)
        .scrollContentBackground(.hidden)
    }
}

#Preview {
    ChatView()
        .background(Image("Background")
            .resizable()
            .scaledToFill()
            .ignoresSafeArea())
}
