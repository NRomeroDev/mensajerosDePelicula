import paquete.*
import paquetito.*
import paquetote.*
import mensajeros.*



object empresa{
    const listaDeEmpleados = []
    var paquetesPendientes=[]
    var gananciaTotal = 0

    method gananciaTotal(){
        return gananciaTotal
    }

    method paquetesPendientes(){
        return paquetesPendientes
    }

    method contratarEmpleado(empleado){
        listaDeEmpleados.add(empleado)
    }   

    method despedirEmpleado(empleado){
        listaDeEmpleados.remove(empleado)
    }

    method despedirTodos(){
        listaDeEmpleados.clear()
    }

    method esMensajeriaGrande(){
        return listaDeEmpleados.size() > 2
    }

    method puedeEntregarPrimerEmpleado(destino){
        return destino.requisito(listaDeEmpleados.first())
    }

    method pesoDeUltimoEmpleado(){
        return listaDeEmpleados.last().peso()
    }

    method puedeAlguienEntregar(paquete){
        return listaDeEmpleados.any({mensajero => 
            paquete.sePuedeEntregar(mensajero)
        })
    }

    method quienesPuedenEntregar(paquete){
        return listaDeEmpleados.filter({mensajero => paquete.sePuedeEntregar(mensajero)})
    }

    method haySobrePeso(){
        return 500 < (listaDeEmpleados.sum({mensajero => mensajero.peso()}) / listaDeEmpleados.size()) 
    }

    method entregarPaqueteSiSePuede(paquete){
        if(self.puedeAlguienEntregar(paquete)){

            self.enviar(paquete)
            paquetesPendientes.remove(paquete)
            
        }else{
            paquetesPendientes.add(paquete)
        }
    }

    method enviar(paquete){
        gananciaTotal += paquete.precio()
    }

    method enviarTodosLosPaquetes(paquete){
        paquetesPendientes.forEach({paquete => self.entregarPaqueteSiSePuede(paquete)})
    }

    method entregarElPaqueteMasCaro(){
        self.entregarPaqueteSiSePuede(self.paqueteMasCaro())
    }

    method paqueteMasCaro(){
        return paquetesPendientes.max({paquete => paquete.precio()})
    }


    // Testing
    method listaEmpleados(){
        return listaDeEmpleados
    }

}