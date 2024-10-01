//
//  LocationMapAnnotationView.swift
//  ScottysMapApp
//
//  Created by Scotty Schwartz-Owen on 8/5/24.
//

import SwiftUI

struct LocationMapAnnotationView: View {

	let accentColor = Color("AccentColor")

    var body: some View {
			VStack(spacing: 0) {
				Image(systemName: "map.circle.fill")
					.resizable()
					.scaledToFit()
					.frame(width: 30, height: 30)
					.font(.headline)
					.foregroundStyle(.white)
					.padding(6)
					.background(accentColor)
					.cornerRadius(36)

				Image(systemName: "triangle.fill")
					.resizable().scaledToFit()
					.foregroundStyle(accentColor)
					.frame(width: 10, height: 10)
					.rotationEffect(Angle(degrees: 180))
					.offset(y: -2)
					.padding(.bottom, 40)
			}
    }
}

#Preview {
	ZStack {
		Color.black.ignoresSafeArea()
		LocationMapAnnotationView()
	}
}
