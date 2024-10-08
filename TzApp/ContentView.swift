import SwiftUI

struct ContentView: View {
    @State var count: Int
    
    var body: some View {
        VStack {
            Text("Let's count together")
                .font(.system(size: 32))
            
            VStack(spacing: 64) {
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
                    Text("Сброс")
                        .font(.system(size: 16))
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .background(Color.darkThree)
                        .cornerRadius(16)
                        .foregroundColor(.white)
                }
            }
            .padding(.top, 100)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.backColor)
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView(count: 0)
}
