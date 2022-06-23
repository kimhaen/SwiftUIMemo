import SwiftUI

@main
struct SwiftUIMemoApp: App{

  @StateObject var store = MemoStore()

  var body: some Scene {
    WindowGroup{
      MainListView()
          .environmentObject(store)
    }
  }
}