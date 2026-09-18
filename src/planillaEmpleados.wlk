import paquete.*
import mensajeros.*

object planillaEmpleados{
    const listaDeEmpleados = []

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


    // Testing
    method listaEmpleados(){
        return listaDeEmpleados
    }

}