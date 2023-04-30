//
//  Tab2View.swift
//  Sample
//
//  Created by 渡邊魁優 on 2023/03/10.
//

import SwiftUI

struct Tab2View: View {
    @StateObject var itemViewModel = ViewModel()
//    @EnvironmentObject var itemViewModel: ViewModel
    var body: some View {
        NavigationStack {
            List {
                ForEach(itemViewModel.Items) { item in
                    Text(item.name)
                }
                .onDelete(perform: itemViewModel.delete)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        itemViewModel.add()
                    }) {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

struct Tab2View_Previews: PreviewProvider {
    static var previews: some View {
        Tab2View()
            .environmentObject(ViewModel())
    }
}
