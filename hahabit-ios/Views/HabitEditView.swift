import SwiftUI

struct HabitEditNavigationView: View {
    var habits: [Habit]

    var body: some View {
        NavigationView {
            HabitEditView(habits: habits)                .navigationTitle("Habits")
        }
    }
}

struct HabitEditView: View {
    var habits: [Habit]

    var body: some View {
        List(habits) { habit in
            HabitView(habit: habit)
        }
    }
}

struct HABITEDITVIEW_Previews: PreviewProvider {
    static var previews: some View {
        HabitEditNavigationView(
            habits: [Habit(id: 1, description: "Foo", completed: false)]
        )
    }
}
