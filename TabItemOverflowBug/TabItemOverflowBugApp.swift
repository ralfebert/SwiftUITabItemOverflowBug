import SwiftUI

class AppModel: ObservableObject {
    @Published var showMoon: Bool = true
}

@main
struct TabItemOverflowBugApp: App {
    @State var currentTab: String = "A"

    @StateObject var appModel = AppModel()

    var body: some Scene {
        WindowGroup {
            TabView(selection: $currentTab) {
                ForEach(["cloud", "moon", "wind", "tornado", "smoke", "trash", "paperplane"], id: \.self) { name in
                    if name != "moon" || self.appModel.showMoon {
                        ContentView(title: name, appModel: self.appModel)
                            .tabItem { Label(name, systemImage: name) }
                            .tag(name)
                    }
                }
            }
        }
    }
}
