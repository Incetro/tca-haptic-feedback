import UIKit
import ComposableArchitecture

// MARK: - Dependency

struct Dependency {
    let generator: UIFeedbackGenerator
    let subscriber: Effect<Never>.Subscriber
}
