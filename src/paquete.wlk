import mensajeros.*
import destinos.*

object paquete{
    var pago = false


    method pago(){
        return pago
    }

    method precio(destino){
        return destino.precio()
    }

    method pagarPaquete(){
        pago = true
    }


    method sePuedeEntregar(destino, mensajero){
        return self.pago() && destino.requisito(mensajero)
    }
}
