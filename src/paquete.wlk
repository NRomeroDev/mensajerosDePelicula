import mensajeros.*
import vehiculos.*

object paqueteBrooklyn{
    var property pago = false 
    const precio = 150

    method precio(){
        return precio
    }

    method pagarPaquete(){
        self.pago(true)
    }

    method sePuedeEntregar(mensajero){
        return self.pago() && mensajero.peso() <= 1000
    }
}

object paqueteMatrix{
    var property pago = false 
    const precio = 500

    method precio(){
        return precio
    }

    method pagarPaquete(){
        self.pago(true)
    }
    
    method sePuedeEntregar(mensajero){
        return self.pago() and mensajero.puedeLlamar()
    }
}
