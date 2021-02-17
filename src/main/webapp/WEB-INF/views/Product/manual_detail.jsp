<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	<% request.setCharacterEncoding("UTF-8"); %>
    <c:set var="contextPath" value="${pageContext.request.contextPath }"/>
    <c:set  var="pageMap"  value="${pageMap}" />
    <c:set  var="product"  value="${product}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매뉴얼 게시판</title>
  <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="detailpage.css">

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous"></script>
	<script type="text/javascript">
	
	</script>
<style>
	a{
	 text-decoration: none;
	}
    #manaul_list tr th{border-right: 1px solid #eee;}
</style>

</head>
<body>

  <div class="container">
        
         <table class="table">
            <tbody>
                <tr> 
                    <td id="td1" scope="row">이미지:</td>
                    <td id="td2" scope="row">
                        
<!--                       제품이미지 jpg 파일을 보여준다.(기능구현)              -->
                        <a href="#"><img src="${contextPath}/download?productName=${product.productName }&productImage=${product.productImage}&filePart=3"></a>
                    </td>
                </tr>
                <tr>
                    <td id="td1" scope="row" colspan="1">제품명:</td>
                    <td id="td2" scope="row" colspan="1"><span name="productName">${product.productName }</span></td>
                </tr>
                <tr>
                    <td id="td1" scope="row">제조사:</td>
                    <td id="td2" scope="row" >
						<span name="manufacName">${product.manufacName}</span>
                    </td>
                </tr>
                <tr> 
                    <td id="td1" scope="row">분류:</td>
                    <td id="td2" scope="row" colspan="1"><span name="productGroup">${product.productGroup}</span></td>
                </tr>
                <c:choose>
                	<c:when test="${product.uno == 1 }">
		                <tr> 
		                    <td id="td1" scope="row">사용매뉴얼:</td>
		                    <td id="td2" scope="row" name="useManual"><a href="${contextPath}/download?productName=${product.productName }&useManual=${product.useManual}&filePart=1">${product.useManual}</a></td>
		                </tr>
                	</c:when>
                	<c:when test="${product.uno == 2 }">
		                <tr>
		                    <td id="td1" scope="row">AS매뉴얼:</td>
		                    <td id="td2" scope="row" name="asManual"><a href="${contextPath}/download?productName=${product.productName }&asManual=${product.asManual}&filePart=2">${product.asManual}</a></td>
		                </tr>
                	</c:when>
                	<c:otherwise>
		                <tr> 
		                    <td id="td1" scope="row">사용매뉴얼:</td>
		                    <td id="td2" scope="row" name="useManual"><a href="${contextPath}/download?productName=${product.productName }&useManual=${product.useManual}&filePart=1">${product.useManual}</a></td>
		                </tr>
		                <tr>
		                    <td id="td1" scope="row">AS매뉴얼:</td>
		                    <td id="td2" scope="row" name="asManual"><a href="${contextPath}/download?productName=${product.productName }&asManual=${product.asManual}&filePart=2">${product.asManual}</a></td>
		                </tr>
                	</c:otherwise>
                </c:choose>


                <tr style="text-align: center">
                    <td style="width: 100%" colspan=2>
                   <button><a href="${contextPath }/Manual/listManual.do?pageNum=${pageMap.pageNum}&section=${pageMap.section}">이전화면</a></button>
                   </td>
                </tr>
            </tbody>
        </table>
    </div>

</body>
</html>