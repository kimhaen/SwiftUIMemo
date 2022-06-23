import Foundation

class MemoStore : ObservableObject{

  @Published var list : [Memo]

  init(){
    list = [
      Memo(content : "memo1", insertDate : Date.now),
      Memo(content : "memo2", insertDate : Date.now.addingTimeInterval(3600 * -24)),
      Memo(content : "memo3", insertDate : Date.now.addingTimeInterval(3600 * -48))
    ]
  }
  func insert(memo: String){
    list.insert(Memo(content:memo), at:0)
  }
  func update(memo: MEmo?, content: String){
    guard let memo = memo else { 
      return
    }

    memo.content = content
  }
}