import SwiftUI

struct BannerView: View {
        var body: some View {
                ZStack {
                        Color.black
                        HStack {
                                Spacer().frame(width: 80)
                                VStack {
                                        Spacer()
                                        IOSAppIcon(sideLength: 188)
                                                .clipShape(RoundedRectangle(cornerRadius: 44, style: .continuous))
                                        Spacer()
                                        MacInputMethodAppIcon(sideLength: 188)
                                                .clipShape(RoundedRectangle(cornerRadius: 44, style: .continuous))
                                        Spacer()
                                }
                                Spacer()
                        }
                        HStack {
                                Spacer()
                                Image(.keyboard)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 490)
                                        .clipShape(RoundedRectangle(cornerRadius: 4, style: .continuous))
                                Spacer().frame(width: 90)
                        }
                }
                .frame(width: 1200, height: 630)
        }
}

#Preview {
        BannerView()
}
