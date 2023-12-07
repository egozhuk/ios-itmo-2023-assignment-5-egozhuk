import SwiftUI

struct Screen_1_1: View {
    
    @State var test: String = "vk.com"

    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                Text("QR-код")
                    .bold()
                    .font(.system(size: 25))
                TextField("Placeholder", text: $test)
                    .padding(.leading, 10)
                    .frame(width: 300, height: 40, alignment: .center)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(.systemGray4), lineWidth: 1)
                    )
                Image("QR-code", label: Text("qr"))
                    .resizable()
                    .frame(width: 250, height: 250, alignment: .center)
                    .padding(.top, 30)
                Spacer()
            
                HStack {
                    Button(action: {}) {
                        Text("PNG")
                            .bold()
                    }
                    .frame(width: geometry.size.width/2 - 16, height: 50)
                    .background(Color(.systemBlue))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.leading, 8)
                    

                    Button(action: {}) {
                        Text("SVG")
                            .bold()
                    }
                    .frame(width: geometry.size.width/2 - 16, height: 50)
                    .background(Color(.systemBlue))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.leading, 8)
                }
            }
        }
    }

}

#Preview {
    Screen_1_1()
}
