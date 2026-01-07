import Foundation

/// A simple model representing a single heart rate reading.
public struct HeartRateSample: Identifiable, Codable {
    public let id: UUID
    public let beatsPerMinute: Int
    public let timestamp: Date
    
    public init(id: UUID = UUID(), beatsPerMinute: Int, timestamp: Date = Date()) {
        self.id = id
        self.beatsPerMinute = beatsPerMinute
        self.timestamp = timestamp
    }
}