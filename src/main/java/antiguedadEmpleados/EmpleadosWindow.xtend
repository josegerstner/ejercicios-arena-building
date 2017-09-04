package antiguedadEmpleados

import org.uqbar.arena.windows.MainWindow
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.layout.ColumnLayout
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Selector
import org.uqbar.arena.bindings.PropertyAdapter
import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*
import org.uqbar.arena.widgets.NumericField
import org.uqbar.arena.widgets.TextBox
import org.uqbar.arena.widgets.CheckBox

class EmpleadosWindow extends MainWindow<EmpleadosDomain> {
	
	new() {
		super(new EmpleadosDomain)
	}
	
	override createContents(Panel mainPanel) {
		this.title = "Formulario Día del Niño para Empleados"
		mainPanel.layout = new ColumnLayout(2)
		
		new Label(mainPanel).text = "Empleado"
		new Selector(mainPanel) => [
			allowNull = false
			width = 200
			val itemsProperty = items <=> "empleados"
			itemsProperty.adapter = new PropertyAdapter(typeof(Empleado), "nombre")
			value <=> "empleadoSeleccionado"
		]
		
		new Label(mainPanel).text = "Fecha Ingreso :"
		new TextBox(mainPanel).value <=> "fechaIngreso"
		
		new Label(mainPanel).text = "Antigüedad :"
		new NumericField(mainPanel).value <=> "antiguedad"
		
		new Label(mainPanel).text = "¿Tiene Hijos?"
		new CheckBox(mainPanel).value <=> "tieneHijos"
	}
	
	def static main(String[] args) {
		new EmpleadosWindow().startApplication
	}
}