
import SwiftUI

struct ContentView: View {
    
    //MARK: Properties
    @ObservedObject var viewModel = TDTaskListViewModel()
    
    var body: some View {
        NavigationView {
            List{
                ForEach(viewModel.tdTasks.indices, id: \.self){ index in
                    HStack {
                        Text(viewModel.tdTasks[index].title)
                        Spacer()
                        Image(systemName: viewModel.tdTasks[index].isCompleted ? "checkmark.circle.fill" : "circle")
                            }
//                    .contentShape(Rectangle())  //Used to give the whole row as a hit area to the gesture
                    .onTapGesture {
                        viewModel.updateTDTaskCompletion(at: index)
                    }
                } //: ForEach
            } //: List
            .onAppear{
                viewModel.fetchTDTask()
            }
//            .navigationTitle("TD Task")
        } //: NAvigation
    }
}

#Preview{
    ContentView()
}
