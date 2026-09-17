object matrix{
    
    const precio = 500 

    method precio(){
        return precio
    }

    method requisito(mensajero){
        return mensajero.puedeLlamar() 
    }
}



object brookyn{ 

    const precio = 150

    method precio(){
        return precio
    }

    method requisito(mensajero){
        return mensajero.peso() <= 1000
    }
}

