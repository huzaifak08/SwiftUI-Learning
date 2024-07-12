import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]), 
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                Text("Cupertino, CA")
                    .font(.system(size: 32,weight: .medium,design: .default))
                    .foregroundColor(.white)
//                    .background(Color.red)
//                    .frame(width: 200,height: 200)
                    .padding(.bottom)
                
                VStack(spacing: 1){
                    Image(systemName:"cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180,height: 180)
                    
                    Text("76°")
                        .font(.system(size: 70,weight: .medium))
                        .foregroundColor(.white)
                }
                
                Spacer() // Expand
                
            }
        }
    }
}

#Preview {
    ContentView()
}
