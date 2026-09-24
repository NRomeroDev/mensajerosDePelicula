import mensajeros.*
import destinos.*

object paquetote{

    var precioPagado = 0
    var cantidadDestinos = 0
    var mensajero = neo    
    var destino = matrix

    method mensajero(nuevoMensajero){
         mensajero = nuevoMensajero
    }

    method destino(nuevoDestino){
        destino = nuevoDestino
    }

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
      
        return matrix.requisito(mensajero) && brooklyn.requisito(mensajero)
    
    }

    method sePuedeEntregar(){

        return self.pago() && self.elMensajeroPuedeIrATodosLados()

    }
}
