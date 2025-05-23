import SwiftUI

struct BannerView: View {
        var body: some View {
                ZStack {
                        Color.black
                        HStack {
                                Spacer().frame(width: 80)
                                VStack {
                                        Spacer()
                                        SquareIcon(sideLength: 188)
                                                .clipShape(RoundedRectangle(cornerRadius: 44, style: .continuous))
                                        Spacer()
                                        SquareAltIcon(sideLength: 188)
                                                .clipShape(RoundedRectangle(cornerRadius: 44, style: .continuous))
                                        Spacer()
                                }
                                Spacer()
                        }
                        #if os(iOS)
                        HStack {
                                Spacer()
                                Image(.keyboard)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 490)
                                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                                Spacer().frame(width: 90)
                        }
                        #endif
                }
                .frame(width: 1200, height: 630)
        }
}

#Preview {
        BannerView()
}
