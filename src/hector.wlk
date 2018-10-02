import plantas.*
object hector {
	var property posicion = game.at(2,2)
	method imagen() = "player.png"
	
	method plantaMaiz(){
		if(game.colliders(self).size() == 0){ 
			game.addVisualIn(new Maiz(),posicion.clone())
		}
	
	}
	method plantaTrigo(){
		if(game.colliders(self).size() == 0){
			game.addVisualIn(new Trigo(),posicion.clone())
		}	
	}
	method plantaTomaco(){ 
		if(game.colliders(self).size() == 0){
			const tomaco = new Tomaco()
			tomaco.posicion(self.posicion().clone())
			game.addVisual(tomaco)
		}
	}
	method regar(planta){
		planta.serRegado()
	}
}
