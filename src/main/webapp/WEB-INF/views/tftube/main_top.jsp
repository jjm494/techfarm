<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css" href="resources/tftube/style.css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="resources/js/jquery-1.9.0.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){

$("#but").click(function(){	
	$("#top").slideToggle('fast');
});
}
)
</script>
</head>
<body>



<div><!-- start of 1 -->
<Button id="but">펼치기</Button><a href="tftube_main">TFtube				</a>			
검색	<input type="text" name="search"> <input type="button" value="검색" width="900">
<c:choose>
<c:when test="${memberDTO==null}"><a href="login">업로드</a>	
		<a href="login">로그인</a>
</c:when>
<c:otherwise>
<a href="tftube_video_insert">업로드</a> 
</c:otherwise></c:choose>	
</div>

</table>
<!-- start of 2 -->
<div>
<!-- stsrt of 2-1-->
<div id="top" style="float: left;">
<table>
<tr><td><a href="tftube_main">홈</a><br>
인기<br>
<c:if test="${memberDTO!=null}">
		<a href="tftube_mychannel">내 채널</a><br>
<a href="tftube_recentvideo_listRecent_member_no">최근 본 동영상</a><br>
<a href="likeVideo">관심 동영상</a>
</c:if>
<p>
음악<br>
스포츠<br>
게임<br>
영화<br>
TV프로그램<br>
뉴스<br>
실시간<br>
</td>

</table>
</div><!-- end of 2 -1-->
</body>
</html>