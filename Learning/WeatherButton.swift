
import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    var onPressed: () -> Void
    
    var body: some View {
        Button{
            onPressed();
        }label: {
            Text(title)
                .frame(width: 220, height: 50)
                .foregroundColor(textColor)
                .background(backgroundColor)
                .font(.system(size: 20,weight: .bold,design: .default))
                .cornerRadius(10)
        }
    }
}
