package antiguedadEmpleados

import java.time.LocalDateTime
import java.time.Month
import org.junit.Test
import org.junit.Assert

class TestEmpleado {
	val Empleado jefe = new Empleado("Pepe", LocalDateTime.of(2007,Month.MARCH,02,6,1), true)
	val Empleado secretaria = new Empleado("Pepa", LocalDateTime.of(2011,Month.JULY,02,6,1), false)
	val Empleado cadete = new Empleado("Pepo", LocalDateTime.of(2011,Month.DECEMBER,02,6,1), false)
	
	@Test
	def obtenerFechaIngresoJefe(){
		Assert.assertEquals("2007", jefe.anioIngreso)
	}
	
	@Test
	def obtenerMesIngresoSecretaria(){
		Assert.assertEquals("7", secretaria.mesIngreso)
	}
	
	@Test
	def obtenerDiaIngresoCadete(){
		Assert.assertEquals("2", secretaria.diaIngreso)
	}
	
	@Test
	def obtenerTieneHijosJefe(){
		Assert.assertTrue(jefe.tieneHijos)
	}
	
	@Test
	def obtenerNombreSecretaria(){
		Assert.assertEquals("Pepa", secretaria.nombre)
	}
}