import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            VStack{
                Spacer()
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("AutoSpots")
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        // Todo
                    }, label: {
                        Image(systemName: "plus")
                    })
                }
            }
        }
            TabView {
                Spacer()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                
                Spacer()
                    .tabItem {
                        Image(systemName: "bell")
                        Text("Inbox")
                    }
                
                Spacer()
                    .tabItem{
                        Image(systemName: "person")
                        Text("Profile")
                    }
            }
        }
    }

