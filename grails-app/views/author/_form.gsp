<%@ page import="org.learn.grails.Author" %>



<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="author.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${authorInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'age', 'error')} required">
	<label for="age">
		<g:message code="author.age.label" default="Age" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="age" type="number" value="${authorInstance.age}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'authorName', 'error')} ">
	<label for="authorName">
		<g:message code="author.authorName.label" default="Author Name" />
		
	</label>
	<g:textField name="authorName" value="${authorInstance?.authorName}"/>
</div>

