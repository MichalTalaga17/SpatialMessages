//
//  AvatarsView.swift
//  SpatialMessages
//
//  Created by Michał Talaga on 09/04/2025.
//

import SwiftUI

struct AvatarsView: View {
    let users = [
        ("Daniel", "Contact1"),
        ("Jason", "Contact2"),
        ("Megan", "Contact4")
    ]
    
    var body: some View {
            HStack {
                ForEach(users, id: \.0) { user in
                    VStack {
                        Image(user.1)
                            .resizable()
                            .scaledToFit()
                            .padding(.top, 10)
                            .frame(width: 110, height: 110)
                            .foregroundColor(.white)
                        Text(user.0)
                            .font(.caption)
                    }
                    .frame(maxWidth: .infinity)
                }
            }
            .padding(0.0)
        
    }
}
#Preview {
    AvatarsView()
}
