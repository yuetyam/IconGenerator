import SwiftUI

struct AndroidMonochromeAppIcon: View {
        let sideLength: CGFloat
        var body: some View {
                ZStack {
                        Color.clear
                        Circle()
                                .stroke(Color.black, lineWidth: sideLength / 50.0)
                                .frame(width: sideLength * 0.61, height: sideLength * 0.61)
                        CharacterView(strokeColor: Color.black)
                                .frame(width: sideLength * 0.53, height: sideLength * 0.53)
                }
                .frame(width: sideLength, height: sideLength)
        }
}

#Preview {
        AndroidMonochromeAppIcon(sideLength: 256)
}
