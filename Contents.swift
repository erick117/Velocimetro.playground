//: Velocimetro

import UIKit

enum Velocidades : Int{
    case Apagado = 0
    case velocidadBaja = 20
    case velocidadMedia = 50
    case velocidadAlta = 120
    
    init (velocidad : Velocidades) {
        self = velocidad
    }
}

class Auto  {
    
    var velocidad : Velocidades
    
    init() {
        //Velocidades(velocidad: .Apagado)
        velocidad = Velocidades(velocidad: .Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String) {
        
        
        var velocidadActual = (velocidad.rawValue,"")
        
        
        switch velocidad {
            
        case .Apagado:
            velocidad = .velocidadBaja
            velocidadActual.1 = "Velocidad Apagado"
        
        case .velocidadBaja:
            velocidad = .velocidadMedia
            velocidadActual.1 = "Velocidad Baja"
        
        case .velocidadMedia:
            velocidad = .velocidadAlta
            velocidadActual.1 = "Velocidad Media"
        
        case .velocidadAlta:
            velocidad = .velocidadMedia
            velocidadActual.1 = "Velocidad Alta"
        
        default:
          print("Velocidad no encontrada")
           
        }
        
        
        return velocidadActual
    }
    
}

var auto = Auto()

for var i in 0..<20 {
    print(auto.cambioDeVelocidad())
}


