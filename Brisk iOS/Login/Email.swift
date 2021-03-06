import Foundation

final class Email {

	let value: String

	init(_ value: String) {
		self.value = value
	}

	var isValid: Bool {
		let pattern = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
		let match = value.range(of: pattern, options: .regularExpression)
		return match != nil
	}
}
