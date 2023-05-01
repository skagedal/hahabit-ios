import SwiftUI

struct MainView: View {
    @State private var isLoggedIn = true;

    var body: some View {
        VStack {
            if isLoggedIn {
                HabitTrackerView(habits: habits.habits)
                    .debug()
            } else {
                LoginView()
                    .onSubmit {
                        isLoggedIn = true
                    }
            }
        }.debug()
    }

    struct Bar : Identifiable {
        var id = 1
    }

    struct Baz : Identifiable {
        var id = 2
    }

    func foobar() -> any Identifiable {
        if isLoggedIn {
            return Bar();
        } else {
            return Baz();
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
