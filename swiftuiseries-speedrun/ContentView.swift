//
//  ContentView.swift
//  swiftuiseries-speedrun
//
//  Created by Sarun Wongpatcharapakorn on 5/22/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // Top
            topContainer
            Spacer()
            // Zoom
            zoomView
            // Bottom
            bottomContainer
        }
        .background {
            Image("background")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
        }
    }
    
    var bottomContainer: some View {
        VStack {
            modeView
                .padding(EdgeInsets(top: 16, leading: 10, bottom: 10, trailing: 10))
            // actions
            bottomActions
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 45, trailing: 20))
        }
        
        .background(Color.black.opacity(0.6))
    }
    
    var bottomActions: some View {
        ZStack {
        HStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 5))
            Spacer()
            
            Button {
                // flash
            } label: {
                Circle()
                    .fill(.ultraThinMaterial)
                    .frame(width: 46, height: 46)
                    .overlay {
                        Image(systemName: "arrow.triangle.2.circlepath")
                            .font(.system(size: 22))
                    }
            }
            .tint(.white)
        }
            HStack {
                Spacer()
                Circle()
                    .fill(Color.white)
                    .frame(width: 73, height: 73)
                    .overlay {
                        Circle()
                            .stroke(Color.black, lineWidth: 2)
                            .frame(width: 62, height: 62)
                    }
                    
                
                Spacer()
            }
        }
    }
    
    var modeView: some View {
        GeometryReader { geo in
            HStack(spacing: 0) {
                Text("Cinematic".uppercased())
                    .font(.system(size: 13, weight: .medium))
                    .foregroundColor(.white)
                    .frame(width: geo.frame(in: .local).width / 5)
                Text("Video".uppercased())
                    .font(.system(size: 13, weight: .medium))
                    .foregroundColor(.white)
                    .frame(width: geo.frame(in: .local).width / 5)
                Text("Photo".uppercased())
                    .font(.system(size: 13, weight: .bold))
                    .foregroundColor(.yellow)
                    .frame(width: geo.frame(in: .local).width / 5)
                Text("Portrait".uppercased())
                    .font(.system(size: 13, weight: .medium))
                    .foregroundColor(.white)
                    .frame(width: geo.frame(in: .local).width / 5)
                Text("Pano".uppercased())
                    .font(.system(size: 13, weight: .medium))
                    
                    .foregroundColor(.white)
                    .frame(width: geo.frame(in: .local).width / 5)
            }.multilineTextAlignment(.center)
        }
        .frame(height: 20)
    }
    
    var zoomView: some View {
        HStack {
            Button {
                // flash
            } label: {
                Circle()
                    .fill(Color.black.opacity(0.6))
                    .frame(width: 23, height: 23)
                    .overlay {
                        Text("0,5")
                            .font(.system(size: 10, weight: .bold))
                            .foregroundColor(.white)
                    }
            }
            Button {
                // flash
            } label: {
                Circle()
                    .fill(Color.black.opacity(0.6))
                    .frame(width: 38, height: 38)
                    .overlay {
                        Text("1x")
                            .font(.system(size: 14, weight: .bold))
                            .foregroundColor(.yellow)
                    }
            }
            Button {
                // flash
            } label: {
                Circle()
                    .fill(Color.black.opacity(0.6))
                    .frame(width: 23, height: 23)
                    .overlay {
                        Text("3")
                            .font(.system(size: 10, weight: .bold))
                            .foregroundColor(.white)
                    }
            }
        }
    }
    
    var topActions: some View {
        HStack {
            Button {
                // flash
            } label: {
                Image(systemName: "bolt.circle")
                    .font(.system(size: 25, weight: .ultraLight))
            }
            .tint(.white)
            Spacer()
            Button {
                // flash
            } label: {
                Circle()
                    .fill(.ultraThinMaterial)
                    .frame(width: 25, height: 25)
                    .overlay {
                        Image(systemName: "chevron.up")
                    }
            }
            .tint(.white)
            Spacer()
            Button {
                // flash
            } label: {
                Image(systemName: "livephoto")
                    .font(.system(size: 25, weight: .ultraLight))
            }
            .tint(.white)

        }
    }
    
    var topContainer: some View {
        topActions
            .padding(EdgeInsets(top: 0, leading: 12, bottom: 52, trailing: 12))
            .background(Color.black.opacity(0.6))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
