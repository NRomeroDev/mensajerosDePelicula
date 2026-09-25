import mensajeros.*
import destinos.*

object paqueteDiferente{
    
    var pago = true // es diferente porque siempre esta pago
    var destino = matrix

    method destino(nuevoDestino){
        destino = nuevoDestino
    }

    method pago(){
        return pago
    }

    method precio(){
        return destino.precio()
    }

    method pagarPaquete(){
        pago = true
    }


    method sePuedeEntregar(mensajero){
        return mensajero.esDiferente() // Solo puede entregarlo un mensajero diferente al restos
    }
}
