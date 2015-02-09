package com.luxsoft.sw4.iserver



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class OrigenDeDatosController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond OrigenDeDatos.list(params), model:[origenDeDatosInstanceCount: OrigenDeDatos.count()]
    }

    def show(OrigenDeDatos origenDeDatosInstance) {
        respond origenDeDatosInstance
    }

    def create() {
        respond new OrigenDeDatos(params)
    }

    @Transactional
    def save(OrigenDeDatos origenDeDatosInstance) {
        if (origenDeDatosInstance == null) {
            notFound()
            return
        }

        if (origenDeDatosInstance.hasErrors()) {
            respond origenDeDatosInstance.errors, view:'create'
            return
        }

        origenDeDatosInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'origenDeDatos.label', default: 'OrigenDeDatos'), origenDeDatosInstance.id])
                redirect origenDeDatosInstance
            }
            '*' { respond origenDeDatosInstance, [status: CREATED] }
        }
    }

    def edit(OrigenDeDatos origenDeDatosInstance) {
        respond origenDeDatosInstance
    }

    @Transactional
    def update(OrigenDeDatos origenDeDatosInstance) {
        if (origenDeDatosInstance == null) {
            notFound()
            return
        }

        if (origenDeDatosInstance.hasErrors()) {
            respond origenDeDatosInstance.errors, view:'edit'
            return
        }

        origenDeDatosInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'OrigenDeDatos.label', default: 'OrigenDeDatos'), origenDeDatosInstance.id])
                redirect origenDeDatosInstance
            }
            '*'{ respond origenDeDatosInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(OrigenDeDatos origenDeDatosInstance) {

        if (origenDeDatosInstance == null) {
            notFound()
            return
        }

        origenDeDatosInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'OrigenDeDatos.label', default: 'OrigenDeDatos'), origenDeDatosInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'origenDeDatos.label', default: 'OrigenDeDatos'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
