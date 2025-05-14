import SwiftUI

extension MeshGradient {
        static let colorMeshGradient: MeshGradient = MeshGradient(
                width: 3,
                height: 3,
                points: [
                        .init(0, 0), .init(0.5, 0), .init(1, 0),
                        .init(0, 0.5), .init(0.5, 0.5), .init(1, 0.5),
                        .init(0, 1), .init(0.5, 1), .init(1, 1)
                ],
                colors: [
                        .red, .purple, .indigo,
                        .orange, .gray, .blue,
                        .yellow, .green, .mint
                ]
        )
}
