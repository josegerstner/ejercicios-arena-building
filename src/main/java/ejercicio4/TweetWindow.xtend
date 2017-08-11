package ejercicio4

import org.uqbar.arena.windows.MainWindow
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.KeyWordTextArea
import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*

class TweetWindow extends MainWindow<Tweet> {
	new() {
		super(new Tweet)
	}

	override createContents(Panel mainPanel) {
		
		this.title = "Tuiter: ejercicio4Arena"
		
		new Label(mainPanel).text = "Tweet"
		new KeyWordTextArea(mainPanel) => [
			//withFilter [ event | event.endPosition >= 140 ]
			width = 200
			height = 120
			value <=> "tweet"
		]
		
		new Label(mainPanel) => [
			value <=> "cantidad"
			alignRight
			background <=> "color"
		]
	}
	
	def static main(String[] args) {
		new TweetWindow().startApplication
	}
}