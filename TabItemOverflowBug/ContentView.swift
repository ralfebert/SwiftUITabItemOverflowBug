import SwiftUI

struct ContentView: View {
    let title: String
    @ObservedObject var appModel = AppModel()
    @State var showSheet = false

    var body: some View {
        NavigationView {
            Form {
                Text(title)
                Toggle("Show Moon", isOn: $appModel.showMoon)
                Button("Show sheet") {
                    self.showSheet = true
                }
            }
            .navigationBarTitle(title)
        }
        .sheet(isPresented: $showSheet) {
            Text("Hello Sheet")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(title: "A")
    }
}
