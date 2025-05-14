import SwiftUI

struct SingleMessage: Identifiable {
    let id: UUID
    let sender: String
    let content: String
    let isCurrentUser: Bool
}

struct MessageBubbleView: View {
    let message: SingleMessage

    var body: some View {
        HStack {
            if message.isCurrentUser {
                Spacer()
            }
            ///FIX: Colors and many messages in row from one user
            VStack(alignment: message.isCurrentUser ? .trailing : .leading, spacing: 4) {
                if !message.isCurrentUser {
                    Text(message.sender.capitalized)
                        .font(.caption)
                        .foregroundColor(.gray)
                        .padding(.leading, 10)
                    Text(message.content)
                        .padding(.vertical, 14)
                        .padding(.horizontal, 10)
                        .background(message.isCurrentUser ? Color.white.opacity(0.4) : Color.white.opacity(0.1))
                        .foregroundColor(.white)
                        .clipShape(
                            .rect(
                                topLeadingRadius: 14,
                                bottomLeadingRadius: 0,
                                bottomTrailingRadius: 14,
                                topTrailingRadius: 14
                            )
                        )
                } else{
                    Text(message.content)
                        .padding(10)
                        .background(message.isCurrentUser ? Color.white.opacity(0.4) : Color.white.opacity(0.1))
                        .foregroundColor(.white)
                        .clipShape(
                            .rect(
                                topLeadingRadius: 14,
                                bottomLeadingRadius: 14,
                                bottomTrailingRadius: 0,
                                topTrailingRadius: 14
                            )
                        )
                }
                
                
            }
            .frame(maxWidth: 250, alignment: message.isCurrentUser ? .trailing : .leading)

            if !message.isCurrentUser {
                Spacer()
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}
