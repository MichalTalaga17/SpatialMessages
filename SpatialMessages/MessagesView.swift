import SwiftUI

struct MessagesView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    AvatarsView()
                    MessagesListView()
                }
            }
            .background(
                Image("Background")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
            ) // Tło całego scrolla jest przezroczyste
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Messages")
                        .font(.headline)
                        
                }

                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Menu {
                        Button("Option 1") {
                            // Action for Option 1
                        }
                        Button("Option 2") {
                            // Action for Option 2
                        }
                    } label: {
                        Image(systemName: "ellipsis.circle")
                            .foregroundColor(Color.white)
                            .font(.headline)
                    }

                    Button {
                        
                    } label: {
                        Image(systemName: "plus.circle")
                            .foregroundColor(Color.white)
                            .font(.headline)
                    }
                }
            }
            .background(Color.clear)
        }
        
        
    }
}

#Preview {
    MessagesView()
}
