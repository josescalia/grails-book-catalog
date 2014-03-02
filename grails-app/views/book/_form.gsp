<%@ page import="org.learn.grails.Author; org.learn.grails.Book" %>
<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="book.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
    <select id="author" name="author.id">
        <g:each in="${Author.list()}" var="author">
            <option value="${author.id}">${author.authorName}</option>
        </g:each>
    </select>
	%{--<g:select id="author" name="author.id" from="${org.learn.grails.Author.list()}" optionKey="id" required="" value="${bookInstance?.author?.id}" class="many-to-one" />--}%
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'bookTitle', 'error')} ">
	<label for="bookTitle">
		<g:message code="book.bookTitle.label" default="Book Title" />
		
	</label>
	<g:textField name="bookTitle" value="${bookInstance?.bookTitle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'publishedYear', 'error')} required">
	<label for="publishedYear">
		<g:message code="book.publishedYear.label" default="Published Year" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="publishedYear" type="number" value="${bookInstance.publishedYear}" required=""/>
</div>

