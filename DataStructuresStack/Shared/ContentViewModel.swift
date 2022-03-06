//
//  ContentViewModel.swift
//  DataStructuresStack
//
//  Created by Arash Zahoory on 3/6/22.
//

import SwiftUI

class contentViewModel: ObservableObject{
    @Published var stack: Stack<Int> = []
}
