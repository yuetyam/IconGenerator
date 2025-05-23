import SwiftUI

struct MonochromeIcon: View {
        let sideLength: CGFloat
        var body: some View {
                ZStack {
                        Color.clear
                        Circle()
                                .stroke(Color.black, lineWidth: sideLength / 50.0)
                                .frame(width: sideLength * 0.66, height: sideLength * 0.66)
                        CharacterView(strokeColor: Color.black)
                                .frame(width: sideLength * 0.58, height: sideLength * 0.58)
                }
                .frame(width: sideLength, height: sideLength)
        }
}

#Preview {
        MonochromeIcon(sideLength: 256)
}
