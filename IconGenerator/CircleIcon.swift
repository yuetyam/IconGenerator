import SwiftUI

struct CircleIcon: View {
        let sideLength: CGFloat
        var body: some View {
                ZStack {
                        Color.keyboardBackgroundGray
                        Circle()
                                .fill(Color.white)
                                .frame(width: sideLength * 0.75, height: sideLength * 0.75)
                        CharacterView(strokeColor: Color.black)
                                .frame(width: sideLength * 0.66, height: sideLength * 0.66)
                }
                .frame(width: sideLength, height: sideLength)
        }
}

#Preview {
        CircleIcon(sideLength: 256)
}
