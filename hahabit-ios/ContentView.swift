import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Hello") {
                print("Hello")
            }
            Button("Oh no") {
                print("Oh no")
            }
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .buttonStyle(.borderedProminent)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
