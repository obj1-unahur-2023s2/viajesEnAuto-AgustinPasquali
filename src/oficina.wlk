object oficina {
	var primeraRemisera
	var segundaRemisera
	
	method asignarRemiseras(remisera1,remisera2){
		primeraRemisera = remisera1
		segundaRemisera = remisera2
	}
	method cambiarPrimeraRemiseraPor(remisera){
		primeraRemisera = remisera
	}
	method cambiarSegundaRemiseraPor(remisera){
		segundaRemisera = remisera
	}
	method intercambiarRemiseras(){
		self.asignarRemiseras(segundaRemisera, primeraRemisera)
	}
	method remiseraElegidaParaViaje(cliente, kms)=
		if ((primeraRemisera.precioViaje(cliente,kms) - segundaRemisera.precioViaje(cliente, kms)) > 30)
		{segundaRemisera}else{primeraRemisera}
	// se puede realizar como segunda.precioViaje(x,y) + 30 < primera.precioViaje(x,y)
	
}
