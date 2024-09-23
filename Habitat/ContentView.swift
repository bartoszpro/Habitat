import SwiftUI

struct ContentView: View {
    // Track if the user is logged in or not
    @State private var isLoggedIn = false

    var body: some View {
        // Check if the user is logged in
        if isLoggedIn {
            // Show the main app content when logged in
            MainView()
        } else {
            // Show the login screen if not logged in
            LoginView(isLoggedIn: $isLoggedIn)
        }
    }
}

// Main content view of the app (for when the user is logged in)
struct MainView: View {
    var body: some View {
        VStack {
            Text("Welcome to HabitForge!")
                .font(.largeTitle)
                .padding()
            
            // Add more main app content here
        }
    }
}

// A simple login screen
struct LoginView: View {
    // Bind to the isLoggedIn state in ContentView
    @Binding var isLoggedIn: Bool

    // Username and password input fields
    @State private var username: String = ""
    @State private var password: String = ""

    var body: some View {
        ZStack {
            Color(hex: "#e6eadb") //
                            .edgesIgnoringSafeArea(.all)
            VStack {
                Image(systemName: "leaf.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .foregroundStyle(Color(hex: "#88b749"))
                Text("Habitat")
                    .fontWeight(.medium)
                    .font(.largeTitle)
                    .foregroundStyle(Color(hex: "#88b749"))
                
                Button(action: {
                    // Handle login action here
                    isLoggedIn = true // Example action to log in
                }) {
                    Text("Log In")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color(hex: "#88b749")) // Replace with your chosen button color
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding()
                    
            }
        }
        }
}

#Preview {
    ContentView()
}
