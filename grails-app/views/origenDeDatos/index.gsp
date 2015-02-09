
<%@ page import="com.luxsoft.sw4.iserver.OrigenDeDatos" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'origenDeDatos.label', default: 'OrigenDeDatos')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-origenDeDatos" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-origenDeDatos" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="clave" title="${message(code: 'origenDeDatos.clave.label', default: 'Clave')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'origenDeDatos.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="url" title="${message(code: 'origenDeDatos.url.label', default: 'Url')}" />
					
						<g:sortableColumn property="usuario" title="${message(code: 'origenDeDatos.usuario.label', default: 'Usuario')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'origenDeDatos.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="driverClassName" title="${message(code: 'origenDeDatos.driverClassName.label', default: 'Driver Class Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${origenDeDatosInstanceList}" status="i" var="origenDeDatosInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${origenDeDatosInstance.id}">${fieldValue(bean: origenDeDatosInstance, field: "clave")}</g:link></td>
					
						<td>${fieldValue(bean: origenDeDatosInstance, field: "descripcion")}</td>
					
						<td>${fieldValue(bean: origenDeDatosInstance, field: "url")}</td>
					
						<td>${fieldValue(bean: origenDeDatosInstance, field: "usuario")}</td>
					
						<td>${fieldValue(bean: origenDeDatosInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: origenDeDatosInstance, field: "driverClassName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${origenDeDatosInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
