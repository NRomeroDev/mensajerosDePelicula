import vehiculos.*
object jeanGray{
    const puedeLlamar = true
    const peso = 0

    method puedeLlamar(){
        return puedeLlamar
    }

    method peso(){
        return peso
    } 
}

object neo{

    var property puedeLlamar = true
    const peso = 0

    method peso(){
        return peso
    }    

}


object saraConnor{

    const puedeLlamar = false
    var property peso = 0
    var vehiculo = moto


    method nuevoVehiculo(nuevoVehiculo){
        vehiculo = nuevoVehiculo
    }

    method puedeLlamar(){
        return puedeLlamar
    }

    method peso(){
        return peso + vehiculo.peso()
    }
}


