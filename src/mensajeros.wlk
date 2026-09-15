import vehiculos.*

object jeanGray{
    const puedeLlamar = true
    const peso = 65
    
    method puedeLlamar(){
        return puedeLlamar
    }

    method peso(){
        return peso
    }
}

object neo{
    var property tieneCredito = true
    var puedeLlamar = false
    const peso = 0

    method peso(){
        return peso
    }

    method puedeLlamar(){
        if(tieneCredito){puedeLlamar = true}
        else{puedeLlamar = false}
        return puedeLlamar
    }
}

object saraConnor{
    var property peso = 0
    const puedeLlamar = false
    var property vehiculo = moto 

    method puedeLlamar(){
        return puedeLlamar
    } 

    method peso(){
        return peso + vehiculo.peso()
    }
}

