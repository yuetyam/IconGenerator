import SwiftUI

struct CharacterView: View {
        let strokeColor: Color
        var body: some View {
                GeometryReader { geometry in
                        let maxWidth = geometry.size.width
                        let unit: CGFloat = maxWidth / 10.0
                        let lineWidth: CGFloat = unit / 2.5
                        let strokeStyle = StrokeStyle(lineWidth: lineWidth, lineCap: .round, lineJoin: .round)
                        ZStack {
                                // 上部半包圍
                                Path { path in
                                        path.move(to: CGPoint(x: unit * 2, y: unit * 5.7))
                                        path.addLine(to: CGPoint(x: unit * 2, y: unit * 3))
                                        path.addArc(
                                                center: CGPoint(x: unit * 3.5, y: unit * 2.5),
                                                radius: unit * 1.5,
                                                startAngle: .degrees(180),
                                                endAngle: .degrees(270),
                                                clockwise: false
                                        )
                                        path.addLine(to: CGPoint(x: unit * 6.5, y: unit * 1))
                                        path.addArc(
                                                center: CGPoint(x: unit * 6.5, y: unit * 2.5),
                                                radius: unit * 1.5,
                                                startAngle: .degrees(270),
                                                endAngle: .degrees(0),
                                                clockwise: false
                                        )
                                        path.addLine(to: CGPoint(x: unit * 8, y: unit * 5.7))
                                }
                                .stroke(strokeColor, style: strokeStyle)

                                // 最上方一點
                                Path { path in
                                        path.move(to: CGPoint(x: unit * 5, y: unit * 0.2))
                                        path.addLine(to: CGPoint(x: unit * 5, y: unit * 1))
                                }
                                .stroke(strokeColor, style: strokeStyle)

                                // 米 中間一橫
                                Path { path in
                                        path.move(to: CGPoint(x: unit * 3, y: unit * 4))
                                        path.addLine(to: CGPoint(x: unit * 7, y: unit * 4))
                                }
                                .stroke(strokeColor, style: strokeStyle)

                                // 米 中間一豎
                                Path { path in
                                        path.move(to: CGPoint(x: unit * 5, y: unit * 2.5))
                                        path.addLine(to: CGPoint(x: unit * 5, y: unit * 5.5))
                                }
                                .stroke(strokeColor, style: strokeStyle)

                                // 米 左上一點
                                Path { path in
                                        path.move(to: CGPoint(x: unit * 3.2, y: unit * 2.8))
                                        path.addLine(to: CGPoint(x: unit * 4.5, y: unit * 4))
                                }
                                .stroke(strokeColor, style: strokeStyle)

                                // 米 右上一撇
                                Path { path in
                                        path.move(to: CGPoint(x: unit * 6.6, y: unit * 2.6))
                                        path.addLine(to: CGPoint(x: unit * 5.5, y: unit * 4))
                                }
                                .stroke(strokeColor, style: strokeStyle)

                                // 米 左下一撇
                                Path { path in
                                        path.move(to: CGPoint(x: unit * 3.2, y: unit * 5.5))
                                        path.addLine(to: CGPoint(x: unit * 4.5, y: unit * 4))
                                }
                                .stroke(strokeColor, style: strokeStyle)

                                // 米 右下一點／捺
                                Path { path in
                                        path.move(to: CGPoint(x: unit * 6.8, y: unit * 5.5))
                                        path.addLine(to: CGPoint(x: unit * 5.5, y: unit * 4))
                                }
                                .stroke(strokeColor, style: strokeStyle)

                                // 米字上方一撇
                                Path { path in
                                        path.move(to: CGPoint(x: unit * 6.5, y: unit * 1.6))
                                        path.addLine(to: CGPoint(x: unit * 3.5, y: unit * 2.2))
                                }
                                .stroke(strokeColor, style: strokeStyle)

                                // 中間第一橫
                                Path { path in
                                        path.move(to: CGPoint(x: unit * 3, y: unit * 6.1))
                                        path.addLine(to: CGPoint(x: unit * 7, y: unit * 6.1))
                                }
                                .stroke(strokeColor, style: strokeStyle)

                                // 中間第二橫
                                Path { path in
                                        path.move(to: CGPoint(x: unit * 1, y: unit * 7))
                                        path.addLine(to: CGPoint(x: unit * 9, y: unit * 7))
                                }
                                .stroke(strokeColor, style: strokeStyle)

                                // 下部彎折
                                Path { path in
                                        path.move(to: CGPoint(x: unit * 5, y: unit * 7))
                                        path.addLine(to: CGPoint(x: unit * 5, y: unit * 7.5))
                                        path.addArc(
                                                center: CGPoint(x: unit * 5.5, y: unit * 7.5),
                                                radius: unit * 0.5,
                                                startAngle: .degrees(180),
                                                endAngle: .degrees(90),
                                                clockwise: true
                                        )
                                        path.addLine(to: CGPoint(x: unit * 7, y: unit * 8.2))
                                        path.addArc(
                                                center: CGPoint(x: unit * 7, y: unit * 8.7),
                                                radius: unit * 0.5,
                                                startAngle: .degrees(270),
                                                endAngle: .degrees(90),
                                                clockwise: false
                                        )
                                        path.addLine(to: CGPoint(x: unit * 2.5, y: unit * 9.8))
                                }
                                .stroke(strokeColor, style: strokeStyle)
                        }
                }
        }
}

#Preview {
        CharacterView(strokeColor: Color.blue)
                .frame(width: 512, height: 512)
}
