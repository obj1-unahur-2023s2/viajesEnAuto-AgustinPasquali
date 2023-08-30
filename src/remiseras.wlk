object roxana{
	method precioViaje(unCliente, kilometros){
		return (unCliente.precioPorKilometro()* kilometros)
	}
}
object gabriela{
	method precioViaje(unCliente, kilometros){
		return((unCliente.precioPorKilometro() * kilometros)* 1.2)
	}	
}

object mariela{
		method precioViaje(unCliente, kilometros){
			return(50.max(unCliente.precioPorKilometro()* kilometros))
		}
}

object juana{
		method precioViaje(_, kilometros) = if (kilometros<=8) {100} else {200}
}

object lucia{
	var estaReemplazandoA
	method estaReemplazandoA() = estaReemplazandoA
	method estaReemplazandoA(remisera){
		if (remisera == self){
			self.error("No se puede reemplazar a si mismo")
		}
		estaReemplazandoA = remisera			
	}
	
	method precioViaje(unCliente, kilometros) {
		return estaReemplazandoA.precioViaje(unCliente, kilometros)
	}	
}