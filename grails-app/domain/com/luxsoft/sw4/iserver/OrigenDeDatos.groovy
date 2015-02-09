package com.luxsoft.sw4.iserver


import groovy.transform.ToString
import groovy.transform.EqualsAndHashCode
import groovy.sql.Sql
import org.springframework.jdbc.datasource.SingleConnectionDataSource

@ToString(includeNames=true,excludes='dateCreated,lastUpdated')
@EqualsAndHashCode(includes='clave,url')
class OrigenDeDatos {

    String clave
	String descripcion
    String url
    String usuario
    String password
    String driverClassName='com.mysql.jdbc.Driver'
    boolean activo=true
    
    Date dateCreated
    Date lastUpdated

    static constraints = {
        clave(size:5..20,unique:true)
        descripcion()
        url()
        usuario()
        password()
        driverClassName()
        activo()
    }
    
    Sql sql(){
    	SingleConnectionDataSource ds=new SingleConnectionDataSource(
            driverClassName:this.driverClassName,
            url:this.url,
            username:this.usuario,
            password:this.password)
         Sql sql=new Sql(ds)
         return sql
    }
    
}


