import Foundation

@available(iOS 15, *)
extension Player {
	static func mainPlayerType(
		_ featureFlagProvider: FeatureFlagProvider
	) -> MainPlayerType.Type {
		if featureFlagProvider.shouldUseImprovedCaching() {
			AVQueuePlayerWrapper.self
		} else {
			AVQueuePlayerWrapperLegacy.self
		}
	}
}
