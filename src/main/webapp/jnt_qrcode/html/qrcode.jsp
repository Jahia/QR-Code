<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %><%@
	taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %><%@
	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%@
	taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %><%@
	taglib prefix="functions" uri="http://www.jahia.org/tags/functions" %><%@
	taglib prefix="uiComponents" uri="http://www.jahia.org/tags/uiComponentsLib" %><%@
	taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
	<c:set var="bindedComponent" value="${uiComponents:getBindedComponent(currentNode, renderContext, 'j:bindedComponent')}" />
	<!--  <fmt:message key="jnt_qrcode.method"/> : ${currentNode.properties.method.string} -->
	<jcr:nodePropertyRenderer node="${currentNode}" name="contract" renderer="resourceBundle"/>
<c:choose>
  <c:when test="${'wsGApp' == currentNode.properties.method.string}">
	<img width="${currentNode.properties.size.string}" height="${currentNode.properties.size.string}" src="https://chart.googleapis.com/chart?cht=qr&chs=${currentNode.properties.size.string}&chl=<c:url value='${url.server}${url.base}${bindedComponent.url}' />&chld=${currentNode.properties.redundancy.string}" alt="QR Code d'accès à ${bindedComponent.properties.title}"/>
  </c:when>

  <c:otherwise>
  	<!--<fmt:message key="jnt_qrcode.method"/> : ${currentNode.properties.method.string} Not implemented Yet</span> -->
  </c:otherwise>
</c:choose>