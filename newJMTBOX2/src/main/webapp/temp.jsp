<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src='js/jquery/jquery-3.6.0.js'></script>
<script type="text/javascript">
$(document).ready(function(){
	searchajax();
});

</script>


</head>
<body>

<div id = 'search'>
	<input type='text' id='searchWord'>

</div>

<div id = 'results'>

</div>

<script>

function searchajax(){
	$("#searchWord").keydown(function(key){
		if(key.keyCode == 13){
			let searchResult =[];
			let words = $("#searchWord").val();
		if(words != ''){
			$.ajax({
				url : 'SearchConByTitleOrTag',
				data : {searchWords : words},
				dataType : 'json',
				success : function(result){
					if(result.length>0){
						
						for(let i = 0; i < result.length; i++){
	      					searchResult.push(JSON.parse(result[i]));
	      					}
						let str = ''
						for (let i=0; i<result.length; i++){
							str += '<p><img src='+searchResult[i].c_thumbnail+'></p><p>'+searchResult[i].title+'</p>';
						}
						$('#results').append(str);
							
					}else{$("#results").append("");}
				},
				error : function(e){
					console.log('error'+e.status);
				}
			})
		}else{$("#results").html("")}
	}
})
}

</script>



</body>
</html>