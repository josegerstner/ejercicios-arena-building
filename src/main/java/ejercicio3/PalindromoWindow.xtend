package ejercicio3

import org.uqbar.arena.windows.MainWindow
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.TextBox
import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*

class PalindromoWindow extends MainWindow<Palindromo> {
	new() {
		super(new Palindromo)
	}
	
	override createContents(Panel mainPanel) {
		this.title = "Palindromo: ejercicio3Arena"
		
		new Label(mainPanel).text = "Frase"
		new TextBox(mainPanel) => [
			value <=> "fraseOriginal"
		]
		
		new Label(mainPanel) => [
			value <=> "frase"
		]
		
	}
	
	def static main(String[] args) {
		new PalindromoWindow().startApplication
	}
}