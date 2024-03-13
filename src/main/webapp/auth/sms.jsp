<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>커피24 북카페</title>
	<meta charset="UTF-8">
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<div class="card">
	  <div class ="card-header" id="messageBot">
                <h3><em>본인 인증</em></h3>
      </div>

	 <div class="form-group card-body">  
                <div class="form-text" id="idMessage">
                    <span class="text-sm">::</span>
                </div>
                <div class="input-group mb-3">
                    <span class="input-group-text col-4" >휴대폰 번호</span>
                    <input class="form-control" id="id" placeholder="숫자만 입력하세요." >
                </div>
                <div  class="input-group mb-3">
                    <span class="input-group-text col-4" >인증번호</span>
                    <input class="form-control" id="authnum">
                </div>
               <div class="buttonGroup">
	            	<button id="confirm" class="btn btn-primary">인증번호 확인</button><br>
	        	</div>
		</div>
		<div>인증과정 단계만 추가한 테스트용-확인버튼 클릭만 하세요. </div>
</div>
<script>
	//jsp의 el 을 이용하여 pageContext 의 request 객체 프로퍼티값을 가져오기
	console.log('${pageContext.request.requestURL}')
	document.querySelector('#confirm').addEventListener('click',()=>{
		//var yn = '${param.adultYn}'  /* 14세미만 보호자개인정보 제공은 본인 인증 api 에 따라 추가 코드 작성시 사용 */
		var message = {successYn : 'Y'};
		message = JSON.stringify(message)
<<<<<<< HEAD
		var targetOrigin = 'http://localhost:8088/DemoProject/join'; // 부모 창의 origin
=======
		
		var targetOrigin = '${pageContext.request.requestURL}'  // 부모 창의 origin
	/*  'http://localhost:8088/DemoProject/join';   고정된 값은 직접 수정해야 하므로 좋지 않음. */
>>>>>>> refs/heads/main
		window.opener.postMessage(message, targetOrigin);
		
		self.close();
	})
</script>
</body>
</html>