object ludmila {
	method precioPorKilometro () = 18
	
}

object anaMaria{
	var estableEconomicamente = true
	
	method precioPorKilometro () = if (estableEconomicamente){30}else{25}

	
	method estableEconomicamente() = estableEconomicamente
	
	method cambiarSituacionEconomica(){
		estableEconomicamente = not estableEconomicamente
	}
	
}

object teresa{
	var property precioPorKilometro = 22	
}

object melina{
	var estaTrabajandoPara
	
	method estaTrabajandoPara() = estaTrabajandoPara
	method estaTrabajandoPara(unCliente){
		if(unCliente == melina){
			self.error("No se puede trabajar para si misma")	
		}
		estaTrabajandoPara = unCliente
	}
	method precioPorKilometro() = estaTrabajandoPara.precioPorKilometro() - 3
}
