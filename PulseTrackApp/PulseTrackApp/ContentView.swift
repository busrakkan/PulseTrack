import SwiftUI
import PulseTrackCore

struct ContentView: View {
    // We inject the Data implementation here
    @StateObject var viewModel = HeartRateViewModel(
        repository: LocalHeartRateRepository()
    )

    var body: some View {
        VStack(spacing: 30) {
            Text("PulseTrack")
                .font(.largeTitle)
                .bold()

            ZStack {
                Circle()
                    .stroke(Color.red.opacity(0.2), lineWidth: 10)
                    .frame(width: 150, height: 150)
                
                VStack {
                    Text("\(viewModel.latestBPM)")
                        .font(.system(size: 50, weight: .bold))
                    Text("BPM")
                        .font(.caption)
                }
            }

            Button(action: {
                Task {
                    await viewModel.measurePulse()
                }
            }) {
                Text("Measure Heart Rate")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}