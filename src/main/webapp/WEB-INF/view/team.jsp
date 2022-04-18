<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
</head>
<!--easyui css import-->
<link rel="stylesheet" type="text/css" href="/css/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="/css/themes/icon.css">
<link rel="stylesheet" type="text/css" href="/css/themes/color.css">

<link rel="stylesheet" type="text/css" href="/css/common.css">
   
<!--easyui javascript import-->
<script type="text/javascript" src="/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/jquery.easyui.min.js"></script>

<style>
.main_content {
	flex-direction:row; /* 세로 방향으로 정렬 */
}

#nxtGmDiv {
	height:400px;
	background:#fffff0;
}

#tbleName {
	margin-top:50px;
}

#rank {
	height:80px;
	background:#ffff95;
}

</style>

<body>
	<header>
			<div class="header_content">${team}</div>
	</header>
	<div class="main_content">
		<div class="left_content">
			<div id="nxtGmDiv">next</div>
		</div>
		
		<div class="right_content">
			<div id="rank">current</div>
			<div id="tbleName" class="table_header_content">승점표</div>
			<div>
				<table id="trTble" class="easyui-datagrid"></table>
			</div>
		</div>
		
	</div>
	<footer></footer>
</body>

<script type="text/javascript">
$(document).ready(function(){
	setTable();	
});

function setTable() {
	$('#trTble').datagrid({
		url:'',
		columns[[
			{field:'curntGm', title:'현재경기수', width:100},
			{field:'nxtGm', title:'남은경기수', width:100},
			{field:'curntScr', title:'현재승점', width:100},
			{field:'nxtScr', title:'남은승점', width:100},
			{field:'mxScr', title:'최대승점', width:100}
		]],
		fitColumns:true,
		singleSelect:true
	});
}
</script>
</html>