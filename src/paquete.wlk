import mensajeros.*
import destinos.*

object paquete{
    var pago = false
    var mensajero = neo    
    var destino = matrix

    method mensajero(nuevoMensajero){
         mensajero = nuevoMensajero
    }

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


    method sePuedeEntregar(){
        return self.pago() && destino.requisito(mensajero)
    }
}
