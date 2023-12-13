import SwiftUI

struct Screen_2_1: View {

    var body: some View {
        GeometryReader { geometry in
            VStack {
                HStack {
                    NavigationLink(destination: Text("Previous View")) {
                        HStack {
                            Image(systemName: "chevron.backward")
                                .foregroundColor(Color.blue)
                                .font(.system(size: 25))
                                .padding(.leading, 20)
                        }
                    }
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "cart")
                            .font(.system(size: 25))
                    }
                    Button(action: {}) {
                        Image(systemName: "ellipsis")
                            .font(.system(size: 25))
                            .padding(.trailing, 20)
                    }
                }
                ImageSlider()
                    .padding(.top, 30)
                HStack {
                    VStack {
                        Text("Кроссовки высокие")
                            .padding(.leading, 10)
                            .font(.system(size: 25))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        HStack {
                            Text("1250 ₽")
                                .padding(.leading, 10)
                                .font(.system(size: 25))
                                .frame(alignment: .leading)
                            Text("1500 ₽")
                                .strikethrough(true)
                                .foregroundColor(Color(.systemGray5))
                                .font(.system(size: 25))
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .frame(alignment: .leading)
                    }
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "bookmark")
                            .font(.system(size: 30))
                            .padding(.trailing, 20)
                            .foregroundColor(Color(.systemGray2))
                    }
                    
                }
                Divider()
                    .frame(height: 2)
                    .padding(.horizontal, 10)
                
                Text("Доставка")
                    .padding(.leading, 10)
                    .font(.system(size: 18))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("Доставим 6 августа, Санкт-Петербург - 140 ₽")
                    .padding(.leading, 10)
                    .font(.system(size: 14))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(Color(.systemGray2))
                Text("Бесплатная доставка от 15000 ₽")
                    .padding(.leading, 10)
                    .font(.system(size: 14))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(Color(.systemGray2))
                    .padding(.bottom, 10)
                
                Spacer()
                
                Button(action: {}) {
                    Text("Добавить в корзину")
                        .bold()
                }
                .frame(width: geometry.size.width - 20, height: 50)
                .background(Color(.systemBlue))
                .foregroundColor(.white)
                .cornerRadius(10)
                
                Button(action: {}) {
                    Text("Написать")
                        .bold()
                }
                .frame(width: geometry.size.width - 20, height: 50)
                .background(Color(.systemGray5))
                .foregroundColor(.blue)
                .cornerRadius(10)
                .padding(.bottom, 10)
            }
        }
    }

}

struct ImageSlider: View {
    var images: [String] = ["image1", "image2", "image3"]
    @State private var currentPage = 0
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                TabView(selection: $currentPage) {
                    ForEach(images.indices, id: \.self) { index in
                        Image(images[index])
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width, height: geometry.size.width)
                            .clipped()
                            .tag(index)
                    }
                }
                .tabViewStyle(PageTabViewStyle())
            }
        }
    }
}

#Preview {
    Screen_2_1()
}
