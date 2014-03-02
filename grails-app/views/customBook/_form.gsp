<table class="table">
    <tr>
        <td><label for="bookTitle">Title</label></td>
        <td>
            <input type="text" class="form-control" id="bookTitle" name="bookTitle" value="${model?.bookTitle}">
        </td>
    </tr>
    <tr>
        <td><label for="authorId">Author</label></td>
        <td>
            <select class="form-control" id="authorId" name="authorId">
                <g:each in="${authorList}" var="author">
                    <option value="${author?.id}"
                            <g:if test="${author.id == model?.author?.id}">selected</g:if>>${author?.authorName}</option>
                </g:each>
            </select>
        </td>
    </tr>
    <tr>
        <td><label for="publishedYear">Year Published</label></td>
        <td>
            <select class="form-control" id="publishedYear" name="publishedYear">
                <g:each in="${yearList}" var="year">
                    <option value="${year ?: 1900}"
                            <g:if test="${year == model?.publishedYear}">selected</g:if>>${year ?: 1900}</option>
                </g:each>
            </select>
        </td>
    </tr>
</table>