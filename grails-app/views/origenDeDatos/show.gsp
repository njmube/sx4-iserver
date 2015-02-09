
<%@ page import="com.luxsoft.sw4.iserver.OrigenDeDatos" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'origenDeDatos.label', default: 'OrigenDeDatos')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-origenDeDatos" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-origenDeDatos" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list origenDeDatos">
			
				<g:if test="${origenDeDatosInstance?.clave}">
				<li class="fieldcontain">
					<span id="clave-label" class="property-label"><g:message code="origenDeDatos.clave.label" default="Clave" /></span>
					
						<span class="property-value" aria-labelledby="clave-label"><g:fieldValue bean="${origenDeDatosInstance}" field="clave"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${origenDeDatosInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="origenDeDatos.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${origenDeDatosInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${origenDeDatosInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="origenDeDatos.url.label" default="Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${origenDeDatosInstance}" field="url"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${origenDeDatosInstance?.usuario}">
				<li class="fieldcontain">
					<span id="usuario-label" class="property-label"><g:message code="origenDeDatos.usuario.label" default="Usuario" /></span>
					
						<span class="property-value" aria-labelledby="usuario-label"><g:fieldValue bean="${origenDeDatosInstance}" field="usuario"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${origenDeDatosInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="origenDeDatos.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${origenDeDatosInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${origenDeDatosInstance?.driverClassName}">
				<li class="fieldcontain">
					<span id="driverClassName-label" class="property-label"><g:message code="origenDeDatos.driverClassName.label" default="Driver Class Name" /></span>
					
						<span class="property-value" aria-labelledby="driverClassName-label"><g:fieldValue bean="${origenDeDatosInstance}" field="driverClassName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${origenDeDatosInstance?.activo}">
				<li class="fieldcontain">
					<span id="activo-label" class="property-label"><g:message code="origenDeDatos.activo.label" default="Activo" /></span>
					
						<span class="property-value" aria-labelledby="activo-label"><g:formatBoolean boolean="${origenDeDatosInstance?.activo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${origenDeDatosInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="origenDeDatos.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${origenDeDatosInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${origenDeDatosInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="origenDeDatos.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${origenDeDatosInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:origenDeDatosInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${origenDeDatosInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
