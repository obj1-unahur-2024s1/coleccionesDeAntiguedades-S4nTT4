object anioActual {
	var property anio
}

object jarron {
	
	method enMalEstado() = false
	
	method anios() = anioActual.anio()
	
	method restaurar(){}
	
	method esMuyAntigua() = self.anios() >= 100
	
	method vender() {}
	
}
