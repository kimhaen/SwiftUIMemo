import SwiftUI

struct MainListView: View{
  @EnvironmentObject var store: MemoStore

  var body: some View {
    NavigationView{
      List(store.list){ memo in
          VStack (alignment: .leading){
            Text(memo.content)
            .font(.body)
            .lineLimit(1)

            Text(memo.insertDate, style:.date)
            .font(.caption)
            .foregroundColor(.secondary)
          }
          .listStyle(.plain)
          .navitionTitle("Memo")
      }
    }
  }
  struct MainListView_Previews: PreviewProvider{
    static var previews: some view{
      MainListView()
       .environmentObject(MemoStore())
    }
  }

  
}