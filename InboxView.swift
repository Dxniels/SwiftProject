import SwiftUI

struct InboxView: View {
    var body: some View {
        VStack {
            Text("Inbox")
                .font(.largeTitle)
                .bold()
            Spacer()
        }
        .padding()
        .navigationTitle("Inbox")
    }
}
