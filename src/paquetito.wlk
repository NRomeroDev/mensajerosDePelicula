import mensajeros.*
import destinos.*

object paquetito{

    const pago = true
    var destino = matrix


    method destino(nuevoDestino){
        destino = nuevoDestino
    }
    method pago(){       // El paquete siempre va a estar pago
        return pago 
    }

    method precio(){ // El paquete siempre va estar pago
        return 0
    }

    method sePuedeEntregar(mensajero){ 
        /* 
            Con respecto a la condicion de sePuedeEntregar, se elimino la condicion
            esta pago, ya que no tenia sentido tenerlo siendo que siempre sera true

        */
        return destino.requisito(mensajero)
    }
}
