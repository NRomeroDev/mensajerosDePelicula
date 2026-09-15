import src.paquete.*

object empleados{
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

    method puedeEntregarPrimerEmpleado(paquete){
        paquete.sePuedeEntregar(listaDeEmpleados.get(0))
    }

    method pesoDeUltimoEmpleado(){
        listaDeEmpleados.get(listaDeEmpleados.size()-1).peso()
    }


    // Testing
    method listaDeEmpleados(){
        return listaDeEmpleados
    }

}