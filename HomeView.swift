import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                    .toolbar{
                        ToolbarItem(placement: .topBarLeading) {
                            Text("AutoSpots")
                                .font(.largeTitle)
                                .bold()
                            Spacer()
                        }
                        ToolbarItem(placement: .topBarTrailing) {
                            NavigationLink(destination: PostImage()) {
                                Image(systemName: "plus")
                            }
                        }
                    }
            }
        }
    }
}
