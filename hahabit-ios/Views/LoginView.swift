import SwiftUI

struct LoginView: View {
    @Binding var isLoggedIn: Bool
    @State private var username: String = ""

    var body: some View {
        Form {
            UsernameEntryView()
            PasswordEntryView()
            Button("Login") {
                isLoggedIn = true
            }
        }
    }
}

struct UsernameEntryView: View {
    @State private var username: String = ""

    var body: some View {
        TextField("Username", text: $username)
            .onSubmit {
                print(username)
            }
            .textInputAutocapitalization(.never)
            .disableAutocorrection(true)
            .border(.secondary)
    }
}

struct PasswordEntryView: View {
    @State private var password: String = ""

    var body: some View {
        TextField("Password", text: $password)
            .onSubmit {
                print(password)
            }
            .textInputAutocapitalization(.never)
            .disableAutocorrection(true)
            .border(.secondary)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(isLoggedIn: .constant(false))
    }
}
