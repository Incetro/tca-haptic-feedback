import UIKit
import TCA

// MARK: - Dependency

struct Dependency {
    let generator: UIFeedbackGenerator
    let subscriber: Effect<Never, Never>.Subscriber
}
