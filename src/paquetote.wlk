import mensajeros.*
import destinos.*

object paquetote{

    var precioPagado = 0
    var cantidadDestinos = 0
    var property mensajero = neo
    var property destino = matrix

    method pago(){

        return precioPagado == self.precioTotal()

    }

    method cantidadDestinos(cantidad){

        cantidadDestinos = cantidad

    }

    method precioTotal(){

        return 100 * cantidadDestinos

    }

    method pagarPaquete(pagoParcial){

        precioPagado = (pagoParcial + precioPagado).min(self.precioTotal()) 

    }

    method elMensajeroPuedeIrATodosLados(){
      
        return matrix.requisito(mensajero) && brookyn.requisito(mensajero)
    
    }

    method sePuedeEntregar(){

        return self.pago() && self.elMensajeroPuedeIrATodosLados()

    }
}
