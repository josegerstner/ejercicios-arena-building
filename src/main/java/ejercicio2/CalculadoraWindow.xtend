package ejercicio2

import org.uqbar.arena.windows.MainWindow
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.NumericField
import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.layout.ColumnLayout

class CalculadoraWindow extends MainWindow<Calculadora> {
	new() {
		super(new Calculadora)
	}

	override createContents(Panel mainPanel) {
		
		this.title = "Calculadora: ejercicio2Arena"
		
		mainPanel.layout = new ColumnLayout(2)
		
		var panelIzq = new Panel(mainPanel)
		var panelDer = new Panel(mainPanel)
		
		mainPanel.width = 1000
		
		new Label(panelIzq).text = "Operando1: "
		new NumericField(panelDer) => [
			value <=> "operando1"
		]
		
		new Label(panelIzq).text = "Operando2: "
		new NumericField(panelDer) => [
			value <=> "operando2"
		]
		
		new Label(panelIzq).text = "Operación: "
		new TextBox(panelDer) => [
			
			//Tengo que ver porqué no me toma el menos
			withFilter [ event | event.potentialTextResult.matches("[+,-,*,/]") ]
			value <=> "signo"
		]

		new Label(panelIzq).text = "Resultado: "
		new Label(panelDer) => [
			value <=> "resultado"
		]
	}

	def static main(String[] args) {
		new CalculadoraWindow().startApplication
	}

}
