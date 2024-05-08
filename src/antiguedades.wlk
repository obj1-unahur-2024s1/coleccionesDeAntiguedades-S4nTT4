import objetos.*

object casaDeAntiguedades {
	
	const antiguedades = []
	
	method todoLoQueHay() = antiguedades
	
	method adquirirAntiguedad(antiguedad) = antiguedades.add(antiguedad)
	
	method adquirirLote(lote) = antiguedades.addAll(lote)
	
	method hayStock() = not antiguedades.isEmpty()
	
	method hayEnStock(antiguedad) = antiguedades.contains(antiguedad)
	
	method cantidadDeAntguedades() = antiguedades.size()
	
	method ultimaAntiguedadAdquirida() = antiguedades.last()
	
	method esMuyAntigua(antiguedad) = antiguedad.esMuyAntigua()

	
	method aniosAntiguedadEnPosicion(posicion) = antiguedades.get(posicion).anios()
	
	method restaurarPrimeraAntiguedad() = antiguedades.first().restaurar()
	
	method restaurarUltimaAntiguedad() = antiguedades.last().restaurar()
	
	method restaurarEn(posicion){
		const antiguedad = antiguedades.get(posicion)
		if(antiguedad.enMalEstado()){
			antiguedad.restaurar()
		}
	}
	
	method venderLasMasAntiguas(){
		antiguedades.filter({a => a.esMuyAntigua()}).forEach({a => a.vender();
															antiguedades.remove(a)})
	}
	
	method restaurarTodas() = antiguedades.forEach({antiguedad => antiguedad.restaurar()})
	
	method restaurarAntiguedadGuardada(antiguedad) = antiguedades.anyOne()
	
	method restaurarAntiguedadEnMalEstado(antiguedad) = antiguedades.get(antiguedad).enMalEstado()
	
	method sonTodasMuyAntiguas() = antiguedades.all({ a => a.esMuyAntigua()})
	
	method venderLaQueMasAniosTiene() = antiguedades.max({ a => a.anios()}).vender()
	
	method restaurarTodasEnMalEstado(){
		antiguedades.filter({ a => a.enMalEstado()}).forEach({ a => a.restaurar()})
	}
}
