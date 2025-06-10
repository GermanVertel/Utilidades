//
//  Botones.swift
//  Utilidades
//
//  Created by German David Vertel Narvaez on 9/06/25.
//

import SwiftUI

struct Botones: View {
    
    @State private var on = false
    
    var body: some View {
        
        VStack{
            
            Toggle("Activar", isOn: $on)
                .toggleStyle(.button)
                .tint(.blue)
            
            //
            
            Button("Guardar"){
                
            }
            .buttonStyle(.bordered)
            .tint(.blue)
            
            //
            
            Button("Guardar"){
                
            }
            .buttonStyle(.borderedProminent)
            .tint(.blue)
            
            
            //
            
            Button(action: {
                //
            }){
                Text( "Guardar" ).frame(width: 300, height: 40, alignment: .center)
            }
            .buttonStyle(.bordered)
            .tint(.blue)
            
            //
            
            Button(role: .destructive){
                
            } label: {
                Label("eliminar", systemImage: "trash")
            }

            //
            
            // Botón con ícono y fondo de color personalizado
            Button(action: {
                // acción aquí
            }) {
                Label("Compartir", systemImage: "square.and.arrow.up")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundStyle(.white)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }

            //
            
            // Botón con estilo .plain y subrayado
            Button("Detalles") {
                // acción aquí
            }
            .buttonStyle(.plain)
            .foregroundStyle(.blue)
            .underline()

            //
            
            // Botón con borde y relleno suave
            Button("Suscribirse") {
                // acción aquí
            }
            .padding()
            .background(.ultraThinMaterial)
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.blue, lineWidth: 1)
            )

            //
            
            // Botón circular con ícono
            Button(action: {
                // acción aquí
            }) {
                Image(systemName: "plus")
                    .padding()
                    .foregroundStyle(.white)
                    .background(.green)
                    .clipShape(Circle())
            }
            
        }
    }
}

#Preview {
    Botones()
}
