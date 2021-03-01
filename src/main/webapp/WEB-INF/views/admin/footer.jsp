<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

</div>
<!-- /#wrapper -->
<script src="<c:url value="/resources/ckeditor/ckeditor.js"/>"></script>
<script src="<c:url value="/resources/ckfinder/ckfinder.js"/>"></script>
<script src="<c:url value="/resources/js/jquery-3.3.1.min.js"/>"></script>
<script
	src="<c:url value="/resources/js/plugins/morris/raphael.min.js"/>"></script>
<script
	src="<c:url value="/resources/js/plugins/morris/morris.min.js"/>"></script>
<script
	src="<c:url value="/resources/js/plugins/morris/morris-data.js"/>"></script>


<script>
	CKEDITOR
			.replaceAll(function(textarea,config) {
				config.filebrowserBrowseUrl = '${pageContext.request.contextPath}/resources/ckfinder/ckfinder.html';
				config.filebrowserImageBrowseUrl = '${pageContext.request.contextPath}/resources/ckfinder/ckfinder.html?type=Images';
				config.filebrowserFlashBrowseUrl = '${pageContext.request.contextPath}/resources/ckfinder/ckfinder.html?type=Flash';
				config.filebrowserUploadUrl = '${pageContext.request.contextPath}/resources/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files';
				config.filebrowserImageUploadUrl = '${pageContext.request.contextPath}/resources/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images';
				config.filebrowserFlashUploadUrl = '${pageContext.request.contextPath}/resources/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash';
			});
</script>

</body>

</html>
