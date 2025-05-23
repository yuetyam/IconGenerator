import SwiftUI

struct SquareDarkIcon: View {
        let sideLength: CGFloat
        var body: some View {
                ZStack {
                        Color(.displayP3, red: 107 / 255.0, green: 107 / 255.0, blue: 107 / 255.0)
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
        SquareDarkIcon(sideLength: 256)
}
