<%@page import="com.sy.dto.JGBoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



<style>
.articlesoly {
	margin: 0;
	padding:;
}

#bgimg {
	padding: 0;
	margin: -5px;
}

/* ul li */
#bgimg1, #bgimg2, #bgimg3 {
	padding: -5px;
	margin: -5px;
	display: inline-block;
}

#bgimg1 {
	padding: -3px;
	width: 33.6%;
	height: 400px;
	background-image: url(http://choisolyi.dothome.co.kr/lol/img/jg1_2.jfif);
	background-repeat: no-repeat;
	background-position: right center;
}

#bgimg2 {
	padding: -3px;
	width: 33.6%;
	height: 400px;
	background-image:
		url('http://choisolyi.dothome.co.kr/lol/img/jg1_1.png');
	background-repeat: no-repeat;
	background-position: top;

	/* background-attachment: fixed;*/
}

#bgimg3 {
	padding: -3px;
	width: 33.6%;
	height: 400px;
	background-image:
		url("http://choisolyi.dothome.co.kr/lol/img/jg1_3.jfif");
	background-repeat: no-repeat;
	background-position: top;
}

.imglinetop {
	color: white;
	width: 60%;
	height: 60px;
	margin: 0 auto;
	text-align: center;
	font-size: 2.3em;
	position: relative;
	bottom: 240px;
	border-radius: 10px;
	padding: 1px 0px 0px 0px;
	font-size: 6em;
	font-weight: 900;
}

.imglines {
	width: 60%;
	height: 60px;
	margin: 0 auto;
	text-align: center;
	font-size: 2.3em;
	background-color: rgb(255, 255, 255, 0.88);
	position: relative;
	bottom: 150px;
	border-radius: 10px;
	padding: 1px 0px 0px 0px;
}

.gesipan {
	width: 1400px;
	height: 600px;
	border: 1px solid black;
	margin: 30px auto;
	padding: 20px;
}

.gesipantitle {
	width: 1400px;
	border: 1px solid black;
	margin: 0px auto 30px;
	padding: 20px;
	border-radius: 20px;
	font-size: 2.2em;
	font-weight: 600;
}
/*  */
.jgcontent {
	margin: 0 auto !important;
	width: 1200px !important;
	background-color: rgb(250, 250, 250, 0.7);
}

.card-title {
	background-color: rgb(250, 250, 250, 0.9);
}

.card-text {
	height: 400px;
}

.btnsol1, .btnsol2, .btnsol3 {
	
}

.btnsol2, .btnsol1 {
	float: right;
	margin: 0px 20px;
}

.prevnext {
	width: 1200px !important;
	margin: 30px auto;
}

.replist {
	margin: 10px auto;
	width: 1220px;
	padding: 5px;
	position: fixed;
}

.botrep {
	display: inline-block;
	width: 260px;
	margin: 10px 5px auto;
	padding: 5px;
	height: 300px;
	vertical-align: top;
}

.card-body {
	padding: 10px !important;
}

.writerep {
	width: 800px;
	margin: 0 auto;
}

.form-control, .mb-3 {
	width: 800px;
}

.inlineblockcontent {
	display: inline-block;
}
</style>

<script>
function send(){
	if(document.frm.title.value!="")
		document.frm.submit();
	
		
}
$(document).ready(function() {
	
});
</script>


</head>
<body>

	<!-- 상단이미지 -->

	<article id="articlesoly">
		<ul id="bgimg">
			<li id="bgimg1"></li>
			<li id="bgimg2"></li>
			<li id="bgimg3"></li>
		</ul>

		<p class="imglinetop">J U N G L E</p>
		<p class="imglines">
			<I> "이제 고통을 안겨줄 새로운 녀석을 찾아야겠군."</I>
		</p>

		<div class="gesipantitle">
			<p class="titles">정글 게시판</p>
		</div>
	</article>
	<!-- 상단이미지 끝  -->


	<%
		request.setCharacterEncoding("utf-8");
		//	JGBoardDTO dto = (JGBoardDTO) request.getAttribute("dto");
	%>

	<c:set var="dto" value="${requestScope.dto }" />


	<div class="jgcontent">
		<div class="card-header">

			글번호 ${dto.bno } / ${dto.bcategory } / 조회수 ${dto.bhit } / 작성자 <!-- 작성자 -->
			<%-- 		글번호  <%=dto.getBno()%>
			[<%=dto.getBcategory()%>] / 조회수
			<%=dto.getBhit()%>
			/ 작성자
			<%=dto.getNick()%> --%>

		</div>
		<div class="card-body">
			<h5 class="card-title">${dto.btitle}<%-- <%=dto.getBtitle()%> --%>
			</h5>
			<p class="card-text">${dto.bcontent}<%-- <%=dto.getBcontent()%> --%>
			</p>

			<a href="jglist.do" class="btn btn-success btnsol">목록 보기</a> <a
				href="jgupdate.do?bno=${dto.bno}<%-- <%=dto.getBno()%> --%>"
				class="btn btn-success btnsol">수정</a> <a
				href="jgdelete.do?bno=${dto.bno}<%-- <%=dto.getBno()%> --%>"
				class="btn btn-success btnsol">삭제</a>
		</div>
	</div>


	<!-- 이전글, 다음글  -->
	<%-- <div class="prevnext">
		<div class="alert alert-success" role="alert">

			<a href="jgdetail.do?bno="<%=dto.getBno()%>">▲ 안 녕</a>

		</div>


		<div class="alert alert-info" role="alert">
			<a href="jgdetail.do?bno="<%=dto.getBno()%>">▲ ㅂㅇ</a> ▼ ㄶㅇㄹ하슈
		</div>
	</div> --%>

	<!-- 댓글 쓰기 -->

	<div class="writerep">
		<form method="post" action="jgaddrep.do" name="frm"
			class="was-validated">
			<div class="form-group">
				<label for="disabledTextInput">닉네임</label> <input type="text"
					id="id" class="form-control" name="id" placeholder="이블린"
					value="닉네임" readonly="readonly">
			</div>


			<div class="mb-3">
				<label for="validationTextarea">내용</label>
				<textarea class="form-control is-invalid" name="rcontent"
					id="rcontent" placeholder="Required example textarea" required></textarea>
				<!-- <div class="invalid-feedback">Please enter a message in the
					textarea.</div> -->
			</div>



			<div class="inlineblockcontent">
				<input type="hidden" name="bno" id="bno" value="${dto.bno }">
				
				
				<input type="submit" onclick="send();" class="btn btn-success" value="댓글 쓰기">
				
				
			</div>
		</form>

	</div>


	<!-- 댓글 목록 보기 -->
	<div id="replist" style="margin: 10px auto;	width: 1220px; padding: 5px;"></div>


 
	<!-- <div class="replist2">
		<div class="card border-success mb-3 botrep" style="max-width: 18rem;">
			<div class="card-header">댓글</div>
			<div class="card-body text-success">
				<h5 class="card-title">제목</h5>
				<p class="card-text">댓글내용ㅇㄹㅇ 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용
					댓글내용</p>

			</div>
		</div>
		<div class="card border-info mb-3 botrep" style="max-width: 18rem;">
			<div class="card-header">댓글</div>
			<div class="card-body text-info">
				<h5 class="card-title">제ㅔㅔㅔㅔㅔㅔ목</h5>
				<p class="card-text">댓글내용 댓글내용 댓글내용 댓글내용 댓글댓글내용 댓글내용 댓글내용 댓글내용
					댓글내용 댓글내용 댓글내용 댓글내용</p>
			</div>
		</div>
		<div class="card border-dark mb-3 botrep" style="max-width: 18rem;">
			<div class="card-header">Header</div>
			<div class="card-body text-dark">
				<h5 class="card-title">Dark card title</h5>
				<p class="card-text">댓글내용 댓댓글내용 댓ㅇㅇㅇㅇㅇㅇㅇㅇㅇ ㅇㅇㅇㅇㅇㅇㅇ ㅇㅇㅇㅇ
					ㅇㅇㅇㅇㅇㅇ글내용 댓글내용 댓글글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용</p>

			</div>
		</div>
		<div class="card border-success mb-3 botrep" style="max-width: 18rem;">
			<div class="card-header">댓글</div>
			<div class="card-body text-success">
				<h5 class="card-title">제목</h5>
				<p class="card-text">댓글내용ㅇㄹㅇ 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용
					댓글내용</p>

			</div>
		</div>

	</div>

	<div class="replist">
		<div class="card border-success mb-3 botrep" style="max-width: 18rem;">
			<div class="card-header">댓글</div>
			<div class="card-body text-success">
				<h5 class="card-title">제목</h5>
				<p class="card-text">댓글내용ㅇㄹㅇ 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용
					댓글내용</p>

			</div>
		</div>
		<div class="card border-info mb-3 botrep" style="max-width: 18rem;">
			<div class="card-header">댓글</div>
			<div class="card-body text-info">
				<h5 class="card-title">제ㅔㅔㅔㅔㅔㅔ목</h5>
				<p class="card-text">댓글내용 댓글내용 댓글내용 댓글내용 댓글댓글내용 댓글내용 댓글내용 댓글내용
					댓글내용 댓글내용 댓글내용 댓글내용</p>
			</div>
		</div>
		<div class="card border-dark mb-3 botrep" style="max-width: 18rem;">
			<div class="card-header">Header</div>
			<div class="card-body text-dark">
				<h5 class="card-title">Dark card title</h5>
				<p class="card-text">댓내용 댓글내용</p>

			</div>
		</div>
		<div class="card border-success mb-3 botrep" style="max-width: 18rem;">
			<div class="card-header">댓글</div>
			<div class="card-body text-success">
				<h5 class="card-title">제목</h5>
				<p class="card-text">댓글내용ㅇㄹㅇ 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용 댓글내용
					댓글내용</p>

			</div>
		</div>

	</div>
  -->
 <script>
    let bno = ${dto.bno};
	
	console.log(bno);
	
	$.ajax({
		url : 'listreq.do',
		data : {'bno' : bno},
		dataType : 'JSON',
		method : 'post',
		success : function(data) {
			console.log('abcdabcdd :' , data);
			$('#replist').empty();
			$.each(data, function(index, item) {
					console.log(index);
					if(index%3==0){
						let rep ="<div class='card border-success mb-3 botrep' style='max-width: 18rem;'>"	;
						rep+= "<div class='card-header'>댓글</div>"											;
						rep+= "<div class='card-body text-success'>"										;
						rep+=	 "<p class='card-text'>" + item.rcontent  + "</p>	</div></div>"			; 
						
						$('#replist').append(rep);

					}else if(index%2==0){
						let rep ="<div class='card border-info mb-3 botrep' style='max-width: 18rem;'>"	;
						rep+= "<div class='card-header'>댓글</div>"											;
						rep+= "<div class='card-body text-info'>"										;
						rep+=	 "<p class='card-text'>" + item.rcontent  + "</p>	</div></div>"			; 
						
						$('#replist').append(rep);
					}else{
						let rep ="<div class='card border-dark mb-3 botrep' style='max-width: 18rem;'>"	;
						rep+= "<div class='card-header'>댓글</div>"											;
						rep+= "<div class='card-body text-dark'>"										;
						rep+=	 "<p class='card-text'>" + item.rcontent  + "</p>	</div></div>"			; 
						
						$('#replist').append(rep);
					}
				});
	
		}, error:function(data){
			console.log('error : ' , data);
		}
	});
 
 
 </script>

</body>
</html>