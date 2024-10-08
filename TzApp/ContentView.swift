import SwiftUI

struct ContentView: View {
    @State var count: Int
    
    var body: some View {
        VStack {
            Text("Let's count together")
                .font(.system(size: 20))
            
            VStack(spacing: 60) {
                Text("\(count)")
                    .font(.system(size: 64, weight: .semibold))
                
                Button {
                    count += 1
                } label: {
                    ZStack {
                        Circle()
                            .fill(Color.blueNine)
                            .frame(width: 100, height: 100)
                        Image(systemName: "plus")
                            .resizable()
                            .tint(.white)
                            .frame(width: 28, height: 28)
                    }
                }
                
                Button {
                    count = 0
                } label: {
                    ZStack {
                        Circle()
                            .fill(Color.darkThree)
                            .frame(width: 52, height: 52)
                        Image(systemName: "xmark")
                            .resizable()
                            .frame(width: 12, height: 12)
                            .tint(.white)
                    }
                }
            }
            .padding(.top, 100)
        }
    }
}

#Preview {
    ContentView(count: 0)
}
    
    //#2C8BA4
    
