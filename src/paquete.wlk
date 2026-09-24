import mensajeros.*
import destinos.*

object paquete{
    var pago = false
    var property mensajero = neo    
    var property destino = matrix

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
