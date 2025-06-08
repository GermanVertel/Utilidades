//
//  Network.swift
//  Utilidades
//
//  Created by German David Vertel Narvaez on 8/06/25.
//

import SwiftUI
import Network

struct Network: View {
    @StateObject private var networkMonitor = NetworkMonitor()
    
    var body: some View {
        VStack {
            Text(networkMonitor.isConnected ? "Conectado a Internet" : "Sin conexión a Internet")
                .font(.title2)
                .foregroundColor(networkMonitor.isConnected ? .green : .red)
                .padding()
            
            Spacer()
        }
    }
}

class NetworkMonitor: ObservableObject {
    private let monitor = NWPathMonitor()
    private let queue = DispatchQueue(label: "NetworkMonitor")
    @Published var isConnected = false
    
    init() {
        monitor.pathUpdateHandler = { path in
            DispatchQueue.main.async {
                self.isConnected = path.status == .satisfied
            }
        }
        monitor.start(queue: queue)
    }
    
    deinit {
        monitor.cancel()
    }
}

#Preview {
    Network()
}
