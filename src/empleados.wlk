object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(dinero){self.sueldo(dinero)	}
	
	method cobrarSueldo(){return sueldo}
}

object baigorria {
	var cantidadEmpanadasVendidas = 0
	var montoPorEmpanada = 15
	var totalCobrado=0
	
	method ventaEmpanadas(cantidad) {
		cantidadEmpanadasVendidas =cantidad
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	method calculototalCobrado(){totalCobrado+=self.sueldo()}
	method totalCobrado(){return totalCobrado}
	method cobrarSueldo(){return self.sueldo()
		
	}
}

object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) {
		if(empleado==baigorria){
		dinero-=empleado.sueldo()
		}
		else dinero -= empleado.sueldo() 
		empleado.cobrarSueldo()
	}
}
