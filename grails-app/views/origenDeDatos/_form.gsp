<%@ page import="com.luxsoft.sw4.iserver.OrigenDeDatos" %>



<div class="fieldcontain ${hasErrors(bean: origenDeDatosInstance, field: 'clave', 'error')} required">
	<label for="clave">
		<g:message code="origenDeDatos.clave.label" default="Clave" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="clave" maxlength="20" required="" value="${origenDeDatosInstance?.clave}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: origenDeDatosInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="origenDeDatos.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${origenDeDatosInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: origenDeDatosInstance, field: 'url', 'error')} required">
	<label for="url">
		<g:message code="origenDeDatos.url.label" default="Url" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="url" required="" value="${origenDeDatosInstance?.url}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: origenDeDatosInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="origenDeDatos.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="usuario" required="" value="${origenDeDatosInstance?.usuario}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: origenDeDatosInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="origenDeDatos.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${origenDeDatosInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: origenDeDatosInstance, field: 'driverClassName', 'error')} required">
	<label for="driverClassName">
		<g:message code="origenDeDatos.driverClassName.label" default="Driver Class Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="driverClassName" required="" value="${origenDeDatosInstance?.driverClassName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: origenDeDatosInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="origenDeDatos.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${origenDeDatosInstance?.activo}" />

</div>

