import SwiftUI

struct MainNavigationView: View {
    
    init() {
        let appearance = UITabBarAppearance()
        
        appearance.shadowColor = .black
        appearance.shadowImage = UIImage(named: "tab-shadow")?.withRenderingMode(.alwaysTemplate)
        
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        ZStack {
            TabView {
                Text("Explore")
                    .tabItem {
                        Image(systemName: "safari.fill")
                        Text("Explore")
                    }
                
                Text("Events")
                    .tabItem {
                        Image(systemName: "calendar")
                        Text("Events")
                    }

                // Placeholder for the middle button, to keep the space
                Text("")
                    .tabItem { EmptyView() }
                
                Text("Map")
                    .tabItem {
                        Image(systemName: "location.fill")
                        Text("Map")
                    }
                
                Text("Profile")
                    .tabItem {
                        Image(systemName: "house")
                        Text("Profile")
                    }
            }

            VStack {
                Spacer()
                HStack {
                    CreateEventButton()
                }
            }
        }
    }
}

struct CreateEventButton: View {
    var body: some View {
        Button(action: {
            // Action for creating event
        }) {
            Image(systemName: "plus.app.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .padding(20)
                .background(Circle().fill(Color("Primary")))
                .foregroundColor(.white)
                .shadow(radius: 10) // Add shadow for depth, similar to your image
        }
        .frame(width: 76, height: 76) // Adjust the frame size of the button
    }
}

//Preview
struct MainNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MainNavigationView()
    }
}
