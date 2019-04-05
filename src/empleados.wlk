object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000
   
	var sueldo = 15000
	var dineroGastado=0
	var deuda=0
	var dinero=0
	
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo(_dinero){self.sueldo(_dinero)
		self.evaluoSiTengoDinero()
	}
	method gastar(cuanto){
		if(cuanto>sueldo)
		deuda+=cuanto
		sueldo-=cuanto
	}
	method evaluoSiTengoDinero(){
		if(deuda<sueldo){
	      dinero=sueldo-deuda
	      self.pagarDeuda()
	      }
	   else
	    sueldo=0	
	     self.evaluoDinero()     
		}
	method evaluoDinero(){
		if (dinero>0){}
	}	
	
	method pagarDeuda(){
		if(deuda<=sueldo){ deuda -=sueldo }
	 deuda=0
	}
	method totalDeuda()
	{return deuda
	}
	
	method totalDinero(){
		
		return dinero	 	
	}
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var sueldo
	var suma
	
	method ventaEmpanadas(cantidad) {
		cantidadEmpanadasVendidas =cantidad
	}
 	
	method ganancia()=cantidadEmpanadasVendidas * montoPorEmpanada
		
	method cobrarSueldo(){
		sueldo=self.ganancia()
		suma+=sueldo	
		self.resetVenta()
			
	}
		method totalCobrado(){return suma}
	method resetVenta(){
		cantidadEmpanadasVendidas=0
	}
	method sueldo(){return sueldo}
	
	
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
