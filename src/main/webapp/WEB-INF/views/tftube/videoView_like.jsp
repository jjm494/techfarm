<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<c:set var="like_status" value="${like_status}"/><!-- 컨트롤러에서받아옴 -->
<c:set var="unlike_status" value="${unlike_status}"/>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="resources/js/jquery-1.9.0.js" type="text/javascript"></script>
<script type="text/javascript">
var like_status=${like_status};
var unlike_status=${unlike_status};
var no=${vdto.no};


$(function(){//not fucntion
	if(like_status==0){
	$("#like").hide();
	$("#like_disabled").show();
	}	
	else{	
	$("#like_disabled").hide();
	$("#like").show();
	}
	
	if(unlike_status==0){
	$("#unlike").hide();
	$("#unlike_disabled").show();	
	}
	else{	
	$("#unlike_disabled").hide();
	$("#unlike").show();
	}
});
	function likes()
	{like_status--;	
	//1.값은 계속 올라감, 2. 이사이트로 이동자체를 안하느 것일수도. 
	location.href="tftube_videoView?no="+no+"&like_status="+like_status;}
	function likes_disabled()
	{like_status++;	
	location.href="tftube_videoView?no="+no+"&like_status="+like_status;}

	function unlikes()
	{unlike_status--;location.href="tftube_videoView?no="+no+"&unlike_status="+unlike_status;}
	function unlikes_disabled()
	{unlike_status++;location.href="tftube_videoView?no="+no+"&unlike_status="+unlike_status;}	
	
</script>

</head>
<body>
<c:choose>

<c:when test="${memberDTO!=null}">
<button id="like_disabled" onclick="likes_disabled()">like</button>
<button id="like" onclick="likes()" >like</button><!-- it's not work -->
<fmt:formatNumber value="${likep}" pattern="#,##0"/>
<button id="unlike_disabled" onclick="unlikes_disabled()">unlike</button>
<button id="unlike" onclick="unlikes()" >unlike</button>
<fmt:formatNumber value="${vdto.unlikep}" pattern="#,##0"/>
</c:when>

<c:otherwise>
<button id="like_disabled" onclick="move_login()">like</button>
<button id="unlike_disabled" onclick="move_login()">unlike</button>
</c:otherwise>

</c:choose>
</body>
</html>