<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:choose>
	<c:when test="${category == null}">
		<h3>Tất cả sách</h3>
	</c:when>
	<c:otherwise>
		<h3>Danh mục: <c:out value="${category }"></c:out></h3>
	</c:otherwise>
</c:choose>
<a href="${pageContext.request.contextPath}/book?action=create"><h4>Thêm mới</h4></a>
<table>
	<thead>
		<tr>
			<th>STT</th>
			<th>Tên sách</th>
			<th>Tác giả</th>
			<th>Nhà xuất bản</th>
			<th>Năm xuất bản</th>
			<th>Số lượng</th>
			<th>Giá gốc (VND)</th>
			<th>Mô tả</th>
			<th>Chỉnh sửa</th>
			<th>Xóa</th>
		</tr>
	</thead>
	<tbody>

		<c:forEach var="element" items="${books}" varStatus="status">
			<tr>
				<td><c:out value="${status.count}"></c:out></td>
				<td><c:out value="${element.name}"></c:out></td>
				<td><c:out value="${element.author}"></c:out></td>
				<td><c:out value="${element.publisher}"></c:out></td>
				<td><c:out value="${element.yearOfPublication}"></c:out></td>
				<td><c:out value="${element.quantity}"></c:out></td>
				<td><c:out value="${element.price}"></c:out></td>
				<td><c:out value="${element.description}"></c:out></td>
				<td><a href="${pageContext.request.contextPath}/book?action=edit&code=${element.id }">Chỉnh sửa</a></td>
				<td><a href="${pageContext.request.contextPath}/book?action=delete&code=${element.id }">Xóa</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>
