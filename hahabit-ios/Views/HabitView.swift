import SwiftUI

struct HabitView: View {
    var habit: Habit

    var body: some View {
        Button(action: {
            print("Tapped \(habit.description)")
        }, label: {
            HStack {
                Text(habit.description)
                Spacer()
                Text("Foo")
            }
        })
    }
}
