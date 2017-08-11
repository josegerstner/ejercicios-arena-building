package ejercicio3

import org.uqbar.commons.model.annotations.Observable
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Dependencies

@Observable
@Accessors
class Palindromo {
	String fraseOriginal = ""
	
	@Dependencies("fraseOriginal")
	def String getFrase(){
		var String frase
		for(i: fraseOriginal.length >.. 1){
			frase = frase + fraseOriginal.substring(i-1, i)
		}
		frase
	}	
}