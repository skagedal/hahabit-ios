import Foundation

struct Habit: Hashable, Codable {
    var id: Int
    var description: String
    var completed: Bool
}

struct HabitFile: Hashable, Codable {
    var habits: [Habit]
}
