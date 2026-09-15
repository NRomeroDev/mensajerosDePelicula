object  moto{
    const peso = 100

    method peso(){
        return peso
    }
}

object camion{
    const peso = 500
    var property cantAcoples = 0

    method peso(){
        return peso + peso*cantAcoples
    }
}