import Foundation

struct Habit: Hashable, Codable, Identifiable {
    var id: Int
    var description: String
    var completed: Bool
}

struct HabitFile: Hashable, Codable {
    var habits: [Habit]
}
