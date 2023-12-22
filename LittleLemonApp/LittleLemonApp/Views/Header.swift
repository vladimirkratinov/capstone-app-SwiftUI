//
//  HeaderBar.swift
//  LittleLemonApp
//
//  Created by Vladimir Kratinov on 21.12.2023.
//

import SwiftUI

struct Header: View {
    @State var isLoggedIn = false
    
    var body: some View {
        NavigationStack {
            HStack {
                Image("logo")
                Spacer()
                if isLoggedIn {
                    NavigationLink(destination: UserProfile()) {
                        Image("profile")
                            .resizable()
                            .aspectRatio( contentMode: .fit)
                            .frame(maxHeight: 40)
                            .clipShape(Circle())
                            .padding(.trailing)
                    }
                }
            }
        }
        .onAppear() {
            if UserDefaults.standard.bool(forKey: kIsLoggedIn) {
                isLoggedIn = true
            } else {
                isLoggedIn = false
            }
        }
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
            .background(Color.blue)
    }
}
