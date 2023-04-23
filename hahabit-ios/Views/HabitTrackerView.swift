import SwiftUI

struct HabitTrackerView: View {
    var habits: [Habit]

    var body: some View {
        List(habits, id: \.id) { habit in
            HabitView(habit: habit)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HabitTrackerView(habits: [
            Habit(id: 1, description: "Foo", completed: false)
        ])
    }
}
