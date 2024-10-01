//
//  LocationsListView.swift
//  ScottysMapApp
//
//  Created by Scotty Schwartz-Owen on 8/4/24.
//

import SwiftUI

struct LocationsListView: View {

	@EnvironmentObject private var vm: LocationsViewModel

    var body: some View {
			List {
				ForEach(vm.locations) { location in
					Button {
						vm.showNextLocation(location: location)
					} label: {
						listRowView(location: location)
					}
					.padding(.vertical, 4)
					.listRowBackground(Color.clear)
				}
			}
			.listStyle(PlainListStyle())
    }
}

extension LocationsListView {
	
	private func listRowView(location: Location) -> some View {
		HStack {
			if let imageName = location.imageNames.first {
				Image(imageName)
					.resizable()
					.scaledToFill()
					.frame(width: 45, height: 45)
					.clipShape(RoundedRectangle(cornerRadius: 10))
			}

			VStack(alignment: .leading) {
				Text(location.name)
					.font(.headline)
				Text(location.cityName)
					.font(.subheadline)
			}
			.frame(maxWidth: .infinity, alignment: .leading)
		}
	}
}

#Preview {
    LocationsListView()
		.environmentObject(LocationsViewModel())
}
