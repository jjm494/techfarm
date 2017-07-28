<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<td rowspan="3"  height="100%" width="20%" valign="top" align="center" class="sidebar1">
			<div id="sidebar1">
				<div align="right">
				<c:if test="${optionDTO.id.equals(sessionScope.memberDTO.id)}">
				<a href="editBlog?mode=profile&id=${optionDTO.id}">프로필 관리</a>&nbsp;&nbsp;<br>
				</c:if>
				</div>
				<div id=profile>
				<img src="resources/upload/${optionDTO.id}/${optionDTO.profile}" width="300px" height="300px"><br>
				<b>${optionDTO.nickname}</b>(${optionDTO.id})<br>
				${optionDTO.introduce}<br><br><br><br>
				</div><br><br><br><hr>
				<c:if test="${optionDTO.id.equals(sessionScope.memberDTO.id)}">
				<div align="center">
				<a href="imsiboard?id=${optionDTO.id}"><h2>임시보관함</h2></a>
				</div>
				</c:if>
				<hr>
				<div id="board">
					<div align="right">
					<c:if test="${optionDTO.id.equals(sessionScope.memberDTO.id)}">
					<a href="editBlog?mode=board&id=${optionDTO.id}">게시판 관리</a>&nbsp;&nbsp;<br><br>
					</c:if>
					</div>
					<c:forEach var="dto" items="${list}">
					<c:if test="${dto.sideno % 2 == 1}">
					<a href="listBoard?boardno=${dto.boardno}&title=${dto.title}">${dto.title}</a><br><br>
					</c:if>
					</c:forEach>
				</div>
			</div>  <!-- sidebar1 div end -->
			</td>