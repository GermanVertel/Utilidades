//
//  Vibracion.swift
//  Utilidades
//
//  Created by German David Vertel Narvaez on 6/06/25.
//

// en vibraciones y sonido la opcion vibracion del sistema debe estar activada para que funcione el boton y se sienta esta vibracion haptica.
// util para botones especiales como lo son el de eliminar por ejemplo

import SwiftUI

struct Vibracion: View {
    var body: some View {
        Button {
            let impacto = UIImpactFeedbackGenerator(style: .medium)
            impacto.prepare()
            impacto.impactOccurred()
        } label: {
            Text("Vibra")
        }
    
    }   
}

#Preview {
    Vibracion()
}
