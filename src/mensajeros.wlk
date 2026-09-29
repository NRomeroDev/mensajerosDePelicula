import vehiculos.*


object jeanGray{
    const puedeLlamar = true
    const peso = 0
    const esDiferente = false

    method puedeLlamar(){
        return puedeLlamar
    }

    method peso(){
        return peso
    } 

    method esDiferente(){
        return esDiferente
    }
}

object neo{

    var puedeLlamar = true
    const esDiferente = false
    const peso = 0

    method puedeLlamar(){
        return puedeLlamar
    }

    method puedeLlamar(tieneCredito){
        puedeLlamar = tieneCredito
    }

    method esDiferente(){
        return esDiferente
    }

    method peso(){
        return peso
    }    

}


object saraConnor{

    const puedeLlamar = false
    var property peso = 0
    var vehiculo = moto
    const esDiferente = false


    method nuevoVehiculo(nuevoVehiculo){
        vehiculo = nuevoVehiculo
    }

    method puedeLlamar(){
        return puedeLlamar
    }

    method esDiferente(){
        return esDiferente
    }

    method peso(){
        return peso + vehiculo.peso()
    }
}

object hector{

    const puedeLlamar = true
    const peso = 0
    const esDiferente = true

    method puedeLlamar(){
        return puedeLlamar
    }

    method peso(){
        return peso
    } 

    method esDiferente(){
        return esDiferente
    }
}   
