package com.luxsoft.sx.iserver

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(ImportadorDeProductosController)
class ImportadorDeProductosControllerSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "Sincronizar pendientes"() {
    	//given:'Una fecha de importacion'
    	//params.fecha=Date.parse('dd/MM/yyyy',new Date())
    	when:'Sincronizamos los productos'
    	def model =controller.sincronizar()

    	then:'El model con el total productos por linea importados'
    	model.lineas['CAPLE']==2000
    	model.lineas['SBS SULFATADA']==1500
    	model.lineas['CUBIERTOS']==500
    	model.totalProductos==4000
    }
}
