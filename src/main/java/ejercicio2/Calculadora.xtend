package ejercicio2

import org.uqbar.commons.model.annotations.Observable
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Dependencies

@Observable
@Accessors
class Calculadora {
	int operando1
	int operando2
	String signo = '+'
	
	@Dependencies("operando1", "operando2", "signo")
	def double getResultado(){
		switch signo{
			case '+': operando1 + operando2
			case '-': operando1 - operando2
			case '*': operando1 * operando2
			case '/': operando1 as double / operando2 as double
			default	: 0.0
		}
	}
}