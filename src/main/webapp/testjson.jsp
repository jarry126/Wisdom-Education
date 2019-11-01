<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/Wisdom-Education/js/jquery-3.3.1.js"></script>
</head>
<body>

</body>


	<script type="text/javascript">
	
		$(function(){
			var i = {"name":"tom","age":"123"};
			$.ajax({
				type:'post',
				url:"/Wisdom-Education/userManageHandle/testFastjson.action",
				data:{"all":JSON.stringify(i)},
				dataType:"json",
				success:function(data){
					console.log(data);
				}
			})
			
		})
		
		
	</script>
	
	<script type="text/javascript">
		function testEval(){
			alert('测试成功');
		}
		
		
		eval("testEval()");
	
	</script>
	
	
	
	
</html>