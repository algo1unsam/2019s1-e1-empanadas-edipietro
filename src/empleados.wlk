object gimenez {

	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
	// var property sueldo = 15000
	var sueldo = 15000
	var deuda = 0
	var dinero = 0
	var suma

	method sueldo() {
		return sueldo
	}

	method sueldo(nuevoValor) {
		sueldo = nuevoValor
	}

	method dinero(cant) {
		dinero = cant
	}

	method resetDeuda(cant) {
		deuda = cant
	}

	method cobrarSueldo() {
		dinero += 15000
		self.evaluoSiTengodinero()
	}

	method evaluoSiTengodinero() {
		if (dinero >= deuda) {
			dinero -= deuda
			deuda = 0
			self.dinero(dinero)
			self.resetDeuda(deuda)
		} else {
			deuda -= dinero
			dinero = 0
			self.dinero(dinero)
			self.resetDeuda(deuda)
		}
	}

	method gastar(cuanto) {
		if (dinero > 0 and (dinero > cuanto or dinero == cuanto)) {
			dinero -= cuanto
			self.dinero(dinero)
			self.resetDeuda(deuda)
		} else if (dinero < cuanto) {
			suma = cuanto - dinero
			dinero = 0
			deuda += suma
			self.dinero(dinero)
			self.resetDeuda(deuda)
		} else {
			deuda += cuanto
			self.dinero(dinero)
			self.resetDeuda(deuda)
		}
	}

	method totalDeuda() {
		return deuda
	}

	method totalDinero() {
		return dinero
	}

}

object baigorria {

	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var sueldo=0
	var suma=0

	method ventaEmpanadas(cantidad) {
		cantidadEmpanadasVendidas = cantidad
	}

	method ganancia() = cantidadEmpanadasVendidas * montoPorEmpanada

	method cobrarSueldo() {
		sueldo = self.ganancia()
		suma += sueldo
		self.resetVenta()
		 
	}
   
	method totalCobrado() {
		return suma
	}

	method resetVenta() {
		cantidadEmpanadasVendidas = 0
	}

	method sueldo() {
		return sueldo
	}

}

object galvan {

	var dinero = 300000

	method dinero() {
		return dinero
	}

	method pagarA(empleado) {
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}

}

