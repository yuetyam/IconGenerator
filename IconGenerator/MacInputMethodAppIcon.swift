import SwiftUI

struct MacInputMethodAppIcon: View {
        let sideLength: CGFloat
        var body: some View {
                ZStack {
                        Color.keyboardBackgroundGray
                        RoundedRectangle(cornerRadius: sideLength * 0.125, style: .continuous)
                                .fill(Color.black)
                                .frame(width: sideLength * 0.75, height: sideLength * 0.75)
                        CharacterView(strokeColor: Color.white)
                                .frame(width: sideLength * 0.75, height: sideLength * 0.75)
                }
                .frame(width: sideLength, height: sideLength)
        }
}

#Preview {
        MacInputMethodAppIcon(sideLength: 256)
}
