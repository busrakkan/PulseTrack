import Foundation

public enum AppError: Error {
    case connectionFailed
    case storageFull
    case unknown
}