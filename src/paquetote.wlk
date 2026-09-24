import mensajeros.*
import destinos.*

object paquetote{

    var precioPagado = 0 
    var destinos = []

    method destino(nuevoDestino){
        destinos.add(nuevoDestino)
    }



    method pago(){

        return precioPagado == self.precioTotal()

    }

    method cantidadDestinos(){

        return destinos.size()

    }

    method precioTotal(){

        return 100 * self.cantidadDestinos()

    }

    method pagarPaquete(pagoParcial){

        precioPagado = (pagoParcial + precioPagado).min(self.precioTotal()) 

    }

    method elMensajeroPuedeIrATodosLados(mensajero){
      
        return destinos.all({ destino => destino.requisito(mensajero)})
    
    }

    method sePuedeEntregar(mensajero){

        return self.pago() && self.elMensajeroPuedeIrATodosLados(mensajero)

    }
}
