<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>글수정</title>
	<script src="https://code.jquery.com/jquery-latest.js"></script>
	<script type="text/javascript" src="./resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
	<link rel="stylesheet" href="<c:url value="/resources/css/common.css"/>"/>
	<script type="text/javascript" charset="utf-8">
	 $(function(){
	      //전역변수
	      var obj = [];             
	      //스마트에디터 프레임생성
	      nhn.husky.EZCreator.createInIFrame({
	          oAppRef: obj,
	          elPlaceHolder: "editor",
	          sSkinURI: "./resources/editor/SmartEditor2Skin.html",
	          htParams : {
	              // 툴바 사용 여부
	              bUseToolbar : true,           
	              // 입력창 크기 조절바 사용 여부
	              bUseVerticalResizer : true,   
	              // 모드 탭(Editor | HTML | TEXT) 사용 여부
	              bUseModeChanger : true,
	          }
	      });
	      //전송버튼
	      $("#insertBoard").click(function(){
	          //id가 smarteditor인 textarea에 에디터에서 대입
	          obj.getById["editor"].exec("UPDATE_CONTENTS_FIELD", []);
	          //폼 submit
	          $("#insertBoardFrm").submit();
	      });
	  });
	 function changeArea(){
 		var area1 = ['문학·책','영화','미술·디자인','공연·전시','음악','드라마','스타·연예인','만화·애니','방송']; //9개
 		var area2 = ['일상·생각','육아·결혼','애완·반려동물','좋은글·이미지','패션·미용','인테리어·DIY','상품리뷰','원예·재배']; //8개
 		var area3 = ['게임','스포츠','사진','자동차','취미','국내여행','세계여행','맛집']; //8개
 		var area4 = ['IT·컴퓨터','사회·정치','건강·의학','비즈니스·경제','어학·외국어','교육·학문']; //6개
 		var formName = document.insertboard;
 		var area = formName.area;
 		var i=0;
		switch($('#bigarea').val()){
		case 'art':
				area.length=0
			for(i=0; i<area1.length; i++){
				area.options[i] = new Option(area1[i],i)
			}
			break;
		case 'life':
			area.length=0
			for(i=0; i<area2.length; i++){
				area.options[i] = new Option(area2[i],i+9)
			}
			break;
		case 'hobby':
			area.length=0
			for(var i=0; i<area3.length; i++){
				area.options[i] = new Option(area3[i],i+17)
			}
			break;
		case 'int':
			area.length=0
			for(var i=0; i<area4.length; i++){
				area.options[i] = new Option(area4[i],i+25)
			}
			break;
		default :
			area.length=0
				area.options[0] = new Option('==선택하세요==',31)
		} 
	}
	</script>
</head>
<body>
&nbsp;&nbsp;<h2>${title}</h2>
<form action="updateBoard" method="post" id="insertBoardFrm" name="insertboard" enctype="multipart/form-data">
<input type="hidden" name="no" value="${boardDTO.no}">
<input type="hidden" name="boardno" value="${boardDTO.boardno}">
<input type="hidden" name="title" value="${title}">
	<table>
		<tr>
			<td>제목</td>
			<td width="50%"><input type="text" name="subject" id="title" value="${boardDTO.subject}"></td>
			<td>분야</td>
			<td>
				<select name="bigarea" id="bigarea" onchange="changeArea(this)">
					<option value="none">==선택하세요==</option>
					<option value="art">엔터테인먼트.예술</option>
					<option value="life">생활.노하우.쇼핑</option>
					<option value="hobby">취미.여가.여행</option>
					<option value="int">지식.동향</option>
				</select>
				<select name="area" id="area">
					<option value="none">==선택하세요==</option>
				</select>
			</td>
		</tr>
		<tr>
			<td style="margin:0; padding:0;" colspan="4">
			<textarea name="content" id="editor" rows="10" cols="100" style="width:100%; height:412px;">${boardDTO.content}</textarea>
			</td>
		</tr>
		<tr>
			<td>파일첨부</td>
			<td colspan="3">
			<input type=file name="file1">&nbsp;&nbsp;
			<c:if test="${boardDTO.file1!=''}">기존 첨부파일 : ${boardDTO.file1} 
			<input type="radio" name="fileuse" value="0" checked>사용
			<input type="radio" name="fileuse" value="1" >사용안함
			</c:if>
			</td>
		</tr>
		<tr>
			<td>공개여부</td>
			<td colspan="3">
			<input type="radio" name="open" value="0" checked>공개
			<input type="radio" name="open" value="1">비공개
			<input type="radio" name="open" value="2">임시보관
			</td>
		</tr>
	</table>
	<input id="insertBoard" type="button" value="수정">
</form>
</body>
</html>