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
	flex-direction:row; /* ���� �������� ���� */
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
	<!-- header -->
	<div class="header">
		<div class="header_content">${team}</div>
	</div>
	<!-- container -->
	<div class="main_content">
		<div class="left_content">
			<div id="nxtGmDiv"><a onclick="movePage()">next</a></div>
		</div>
		
		<div class="right_content">
			<div id="rank">current</div>
			<div id="tbleName" class="table_header_content">����ǥ</div>
			<div>
				<table id="trTble" class="easyui-datagrid"></table>
			</div>
		</div>
		
	</div>
	<!-- footer -->
	<div class="footer"></div>
</body>

<script type="text/javascript">
$(document).ready(function(){
	setTable();	
});

function setTable() {
	$('#trTble').datagrid({
		url: 'team_test.json',
		columns: [[
			{field:'curntGm', title:'�������', width:100},
			{field:'nxtGm', title:'��������', width:100},
			{field:'curntScr', title:'�������', width:100},
			{field:'nxtScr', title:'��������', width:100},
			{field:'mxScr', title:'�ִ����', width:100}
		]],
		fitColumns: true,
		singleSelect: true,
		method: 'GET' // �ӽ�(���߿� POST�� ����)
	});
}

function movePage() {
	const team = '${team}';
	let form = document.createElement('form');
	let object;

	object = document.createElement('input');
	object.setAttribute('type', 'hidden');
    object.setAttribute('name', 'team');
    object.setAttribute('value', team);
    
    form.appendChild(object);
    form.setAttribute('method', 'post');
    form.setAttribute('action', '/game.do');
    document.body.appendChild(form);
    form.submit();
}
</script>
</html>