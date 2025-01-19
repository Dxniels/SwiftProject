import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            Text("Profile")
                .font(.largeTitle)
                .bold()
            Spacer()
        }
        .padding()
        .navigationTitle("Profile")
    }
}
