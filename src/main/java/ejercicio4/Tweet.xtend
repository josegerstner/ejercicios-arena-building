package ejercicio4

import org.uqbar.commons.model.annotations.Observable
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Dependencies
import java.awt.Color

@Observable
@Accessors
class Tweet {
	String tweet
	
	@Dependencies("tweet")
	def int getCantidad(){
		tweet.length
	}
	
	@Dependencies("cantidad")
	def getColor(){
		if (cantidad > 135){
			Color.RED
		}else{
			Color.GREEN
		}
	}
}