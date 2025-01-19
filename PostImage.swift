//
//  PostImage.swift
//  App
//
//  Created by Daniels Buholcs on 19/01/2025.
//

import SwiftUI
import PhotosUI

struct PostImage: View {
    @State private var pickerItems = [PhotosPickerItem]()
    @State private var selectedImages = [Image]()
    
    var body: some View {
        VStack {
            PhotosPicker(selection: $pickerItems, maxSelectionCount: 5, matching: .any(of: [.images, .not(.screenshots)])) {
                Label("Select an Image", systemImage: "photo")
            }
            
            ScrollView {
                ForEach(0..<selectedImages.count, id: \.self) { i in
                    selectedImages[i]
                        .resizable()
                        .scaledToFit()
                }
            }
        }
        .onChange(of: pickerItems) { newItems in
            Task {
                var images = [Image]()
                
                for item in newItems {
                    if let loadedImage = try await item.loadTransferable(type: Image.self) {
                        images.append(loadedImage)
                    }
                }
                
                DispatchQueue.main.async {
                    selectedImages = images
                }
            }
        }
    }
}

#Preview {
    PostImage()
}
