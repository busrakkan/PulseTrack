import Foundation
import PulseTrackCore
import SwiftUI

@MainActor
class HeartRateViewModel: ObservableObject {
    @Published var latestBPM: Int = 0
    
    // We use the Protocol from the Domain layer, not the specific class from Data
    private let repository: HeartRateRepository

    init(repository: HeartRateRepository) {
        self.repository = repository
    }

    func measurePulse() async {
        let newRate = Int.random(in: 60...100)
        let sample = HeartRateSample(beatsPerMinute: newRate)
        
        do {
            try await repository.saveHeartRate(sample)
            self.latestBPM = newRate
        } catch {
            print("Failed to save pulse")
        }
    }
}