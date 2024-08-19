import SwiftUI

struct ContentView: View {
    
    // Structs are value type so they don't hold state, They get destroyed and recreate
    
    @State private var isNight = false;
    
    
    var body: some View {
        ZStack{
            BackgroundView(isNight: isNight) // Pass state to binding
            
            VStack{
                CityTextView(name: "Cupertino, CA")
                
                MainWeatherView(imageName: isNight ? "moon.fill" : "cloud.sun.fill", temperature: 76)
                
                HStack(spacing:20){
                    WeatherDayView(dayOfWeek: "MON", imageName: "cloud.sun.fill", temperature: 76)
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.bolt.fill", temperature: 88)
                    WeatherDayView(dayOfWeek: "WED", imageName: "cloud.moon.fill", temperature: 55)
                    WeatherDayView(dayOfWeek: "THR", imageName: "cloud.moon.rain.fill", temperature: 60)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.moon.bolt.fill", temperature: 25)
                }
                
                Spacer() // Expand
                
                WeatherButton(title: "Change Day Time", textColor: .blue, backgroundColor: .white,onPressed: {
                    print("Hello World");
                    
                    isNight.toggle()
                })
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayOfWeek:String
    var imageName:String
    var temperature:Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16,weight: .medium,design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .symbolRenderingMode(.palette)
                .resizable()
//                .foregroundColor(.blue)
                .foregroundStyle(.white, .yellow)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40,height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28,weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    
   var isNight: Bool // Refers to the upper state variable
    
    var body: some View {
        
        // ============ One way for Gradient::
        
//        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue , isNight ? .gray : Color("lightBlue")]),
//                       startPoint: .topLeading,
//                       endPoint: .bottomTrailing)
//        .ignoresSafeArea(.all)
        
        // ============ Second way for Gradient::
        
        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
            .ignoresSafeArea()
    }
}

struct CityTextView: View {
    
    var name: String
    
    var body: some View {
        Text(name)
            .font(.system(size: 32,weight: .medium,design: .default))
            .foregroundColor(.white)
        //                    .background(Color.red)
        //                    .frame(width: 200,height: 200)
            .padding(.bottom)
    }
}

struct MainWeatherView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 1){
            Image(systemName:imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180,height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70,weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom,40)
    }
}
