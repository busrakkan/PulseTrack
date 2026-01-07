import SwiftUI
import PulseTrackCore

@main
struct PulseTrackApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "heart.fill")
                .foregroundColor(.red)
                .font(.system(size: 50))
            Text("PulseTrack is Ready!")
                .font(.headline)
                .padding()
        }
    }
}