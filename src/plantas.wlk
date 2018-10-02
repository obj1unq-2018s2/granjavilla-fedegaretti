import hector.*
class Maiz {
	var imagen = "corn_baby.png"
	
	method serRegado() {imagen = "corn_adult.png" }
	
}

class Trigo {
	var imagenes = ["wheat_0.png","wheat_1.png","wheat_2.png","wheat_3.png"]
	var imagen = imagenes.first()
	var cantRegado = 0 
	method serRegado() {
		cantRegado = if (cantRegado >= imagenes.size() - 1) 0 else cantRegado + 1
		imagen = imagenes.get(cantRegado)
	}
	
}

class Tomaco {
	var property posicion 
	
	method imagen() = "tomaco.png" 
	method serRegado() {
		if(posicion.y() < 9){
			self.posicion(posicion.up(1))
		} 
		
	}
	
}
