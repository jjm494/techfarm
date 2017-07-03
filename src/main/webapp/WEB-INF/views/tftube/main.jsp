<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<%@ include file="main_top.jsp"%> 
<video src="resources/otube/advertise/soccer.mp4" autoplay
controls poster="C:\Users\Public\Pictures\Sample Pictures\Chrysanthemum.jpg"
width="600" height="450"></video>
<c:out value="${webappRoot}"/>
</div>
<%int count=0;%>

<table border="3">
<tr>

<c:forEach var="dto" items="${list}"> 
<td><!-- &image=${dto.image}&upPath_img=${upPath_img} -->
<a href="otube_videoView?ind=${dto.ind}">
<img src="${upPath_img}/${dto.image}" width="196" height="100"><br>
${dto.title}</a></td>

<c:set var="count" value="<%=++count%>"/>

<c:if test="${count%6==0}">
</tr><tr>
</c:if>
</c:forEach>
</table>

<!-- src="동영상주소" : 동영상 주소를 입력합니다. 예 - http://www.domain.com/동영상.mp4 

controls : 동영상을 재생하고 탐색하기 위한 조정 바를 표시합니다.

loop : 반복 설정합니다. 동영상이 계속 반복됩니다.


muted : 음소거가 되도록 합니다.

autoplay : 페이지가 로드되면 바로 동영상이 재생되도록 합니다.

poster="이미지파일" : 동영상이 플레이 되기 전 대표로 보여줄 이미지파일을 지정합니다. -->
<%@ include file="main_bottom.jsp"%>    

</body>
</html>