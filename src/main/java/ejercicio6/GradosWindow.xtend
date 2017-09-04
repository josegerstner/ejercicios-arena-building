package ejercicio6

import org.uqbar.arena.windows.MainWindow
import org.uqbar.arena.widgets.Label
import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.TextBox

class GradosWindow extends MainWindow<Grados> {
	
	new(){
		super(new Grados)
	}
	
	override createContents(Panel mainPanel) {
		
		this.title = "Grados: ejercicio6Arena"
		
		new Label(mainPanel).text = "Celsius"
		new TextBox(mainPanel) => [
			value <=> "celsius.convertir"
		]
				
		new Label(mainPanel).text = "Fahrenheit"
		new TextBox(mainPanel) => [
			value <=> "fahrenheit.convertir"
		]
	}	
	def static main(String[] args) {
		new GradosWindow().startApplication
	}
}
