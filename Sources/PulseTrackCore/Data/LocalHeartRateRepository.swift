import Foundation
import PulseTrackCore

public class LocalHeartRateRepository: HeartRateRepository {
    // A simple in-memory storage for our samples
    private var storage: [HeartRateSample] = []

    public init() {}

    public func fetchLatestHeartRate() async throws -> HeartRateSample {
        guard let latest = storage.last else {
            // If empty, return a default starting value
            return HeartRateSample(beatsPerMinute: 0)
        }
        return latest
    }

    public func saveHeartRate(_ sample: HeartRateSample) async throws {
        storage.append(sample)
        print("Data Saved locally: \(sample.beatsPerMinute) BPM")
    }
}