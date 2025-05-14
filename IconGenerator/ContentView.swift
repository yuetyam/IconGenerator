import SwiftUI
import AVFoundation

struct ContentView: View {
        var body: some View {
                ScrollView {
                        LazyVStack {
                                MeshGradientAppIcon(sideLength: 256)
                                Button {
                                        #if os(iOS)
                                        let renderer = ImageRenderer(content: MeshGradientAppIcon(sideLength: 1024))
                                        renderer.scale = 2.0
                                        guard let viewImage = renderer.uiImage else { return }
                                        guard let data = viewImage.pngData() else { return }
                                        guard let image = UIImage(data: data) else { return }
                                        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
                                        #endif
                                } label: {
                                        Label("Save", systemImage: "square.and.arrow.down")
                                                .font(.title)
                                                .padding(.horizontal)
                                                .padding()
                                                .background(Material.thick, in: RoundedRectangle(cornerRadius: 8, style: .continuous))
                                }

                        }
                }
        }
}

#Preview {
        ContentView()
}
