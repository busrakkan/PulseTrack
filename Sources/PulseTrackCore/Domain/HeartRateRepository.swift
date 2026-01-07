import Foundation

public protocol HeartRateRepository {
    func fetchLatestHeartRate() async throws -> HeartRateSample
    func saveHeartRate(_ sample: HeartRateSample) async throws
}