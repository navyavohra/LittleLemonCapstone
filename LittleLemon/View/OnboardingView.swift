//
//  OnboardingView.swift
//  LittleLemon
//
//  Created by Navya Vohra on 2024-08-26.
//

import SwiftUI

struct OnboardingView: View {
    @EnvironmentObject var user: User
    @State private var currentPage = 0
    @State private var isOnboardingCompleted = false
    
    var body: some View {
        NavigationView {
            VStack {
                TabView(selection: $currentPage) {
                    VStack {
                        Text("Welcome to Little Lemon")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text("We are a family-owned Mediterranean restaurant, focused on traditional recipes served with a modern twist.")
                            .multilineTextAlignment(.center)
                            .padding()
                    }
                    .tag(0)
                    
                    VStack {
                        Text("Enter your details")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        TextField("Name", text: $user.name)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        TextField("Email", text: $user.email)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                    }
                    .tag(1)
                    
                    VStack {
                        Text("Ready to Order?")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        NavigationLink(destination: HomeView()) {
                            Text("Get Started")
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                    .tag(2)
                }
                .tabViewStyle(PageTabViewStyle())
                .padding()
                
                Button(action: {
                    if currentPage < 2 {
                        currentPage += 1
                    }
                }) {
                    Text("Next")
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
            .navigationBarHidden(true)
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .environmentObject(User())
    }
}
