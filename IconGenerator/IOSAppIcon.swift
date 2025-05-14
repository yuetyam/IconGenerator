import SwiftUI

struct IOSAppIcon: View {
        let sideLength: CGFloat
        var body: some View {
                ZStack {
                        Color.keyboardBackgroundGray
                        RoundedRectangle(cornerRadius: sideLength * 0.125, style: .continuous)
                                .fill(Color.white)
                                .frame(width: sideLength * 0.75, height: sideLength * 0.75)
                        CharacterView(strokeColor: Color.black)
                                .frame(width: sideLength * 0.75, height: sideLength * 0.75)
                }
                .frame(width: sideLength, height: sideLength)
        }
}

#Preview {
        IOSAppIcon(sideLength: 256)
}
