import SwiftUI

struct Screen_1_2: View {

    var body: some View {
        
        GeometryReader { geometry in
            VStack {
                ZStack {
                    Image("background", label: Text("qr"))
                        .resizable()
                        .frame(width: geometry.size.width, height: 300, alignment: .center)
                        .edgesIgnoringSafeArea(.top)
                    
                    RoundedRectangle(cornerSize: CGSize(width: 20, height: 20))
                        .fill(Color.white)
                        .frame(width: geometry.size.width, height: 180, alignment: .center)
                        .offset(y: 60)
                    
                    Image("vk")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .overlay(
                                Circle().stroke(Color.white, lineWidth: 5)
                            )
                        .offset(x: -geometry.size.width / 3.5, y: -30)
                    
                    Text("VK Tech")
                        .bold()
                        .font(.system(size: 25))
                        .offset(x: -geometry.size.width / 3, y: 55)
                    
                    Text("VK Tech - проект экосистемы VK, в основе решений которого многолетний опыт развития интернет-сервисов и технологий на базе...")
                        .foregroundColor(Color(.systemGray2))
                        .offset(y: 120)
                        .font(.system(size: 15.9))
                        .padding(.top, -20)
                    
                    Text("Ещё")
                        .foregroundColor(.blue)
                        .offset(x: geometry.size.width / 2 - 35, y: 129)
                        .font(.system(size: 15.9))
                    
                }
                Spacer()
            }
        }
        .background(Color(.systemGray5))
    }

}

#Preview {
    Screen_1_2()
}
