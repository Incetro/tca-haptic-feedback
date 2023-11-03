import ComposableArchitecture
import UIKit

// MARK: - SelectionFeedbackGenerator

public protocol SelectionFeedbackGenerator {

    /// Creates a selection feedback generator
    ///
    /// A selection feedback generator must be first created before you can use its functionality
    func create(id: AnyHashable) -> Effect<Never>

    /// Destroys a currently running selection feedback generator
    ///
    /// In is good practice to destroy a selection feedback generator once you are done with it, such as
    /// when you leave a screen or no longer need its functionality
    func destroy(id: AnyHashable) -> Effect<Never>

    /// Triggers selection event
    func selectionChanged(id: AnyHashable) -> Effect<Never>

    /// Prepare feedback generation
    func prepare(id: AnyHashable) -> Effect<Never>
}
