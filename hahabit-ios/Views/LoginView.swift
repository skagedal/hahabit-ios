import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
//    @FocusState private var emailFieldIsFocused: Bool = false

    var body: some View {

        TextField("Username", text: $username)
//            .focused($emailFieldIsFocused)
            .onSubmit {
                print(username)
            }
            .textInputAutocapitalization(.never)
            .disableAutocorrection(true)
            .border(.secondary)

//        Text(username)
//            .foregroundColor(emailFieldIsFocused ? .red : .blue)
        Text("Name")
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
