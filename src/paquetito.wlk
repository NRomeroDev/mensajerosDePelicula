import mensajeros.*
import destinos.*

object paquetito{

    const pago = true
    var property mensajero = neo
    var property destino = matrix

    method pago(){       // El paquete siempre va a estar pago
        return pago 
    }

    method precio(){ // El paquete siempre va estar pago
        return 0
    }

    method sePuedeEntregar(){ 
        /* 
            Con respecto a la condicion de sePuedeEntregar, se elimino la condicion
            esta pago, ya que no tenia sentido tenerlo siendo que siempre sera true

        */
        return destino.requisito()
    }
}
