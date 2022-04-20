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
.header_admin {
	z-index: 999;
    position: absolute;
    top: 20px;
    right: calc(50% - 600px);
    padding: 0 12px;
    line-height: 20px;
    font-size: 12px;
    color: #0e76bc;
    text-decoration: none;
    background-color: #e3edf4;
    border-radius: 20px;
}

.right_content {
	margin-left:45%;
	padding:5px;
}
</style>

<body>
	<!-- header -->
	<div class="header">
		<a href="/admin.do" class="header_admin">관리자</a>
	</div>
	<!-- container -->
	<div class="main_content">
		<div class="table_header_content">
			<button id="graphBtn" class="easyui-linkbutton">그래프</button>
		</div>
		
		<div>
			<table id="grid" class="easyui-datagrid" style="width:1105px"></table>
		</div>
	</div>
	<!-- footer -->
	<div class="footer"></div>
</body>
<script>
$(document).ready(function(){
	setGrid();	
});

function setGrid() {
	$('#grid').datagrid({
		url: 'main_test.json',
		columns: [[
			{field:'rank', title:'순위', width:'100'},
			{field:'team', title:'팀', width:'100'},
			{field:'win', title:'승', width:'100'},
			{field:'lose', title:'패', width:'100'},
			{field:'winScore', title:'승점', width:'100'},
			{field:'gotSet', title:'득세트', width:'100'},
			{field:'lossSet', title:'실세트', width:'100'},
			{field:'setPercent', title:'세트득실률', width:'100'},
			{field:'gotScore', title:'득점', width:'100'},
			{field:'lossScore', title:'실점', width:'100'},
			{field:'scorePercent', title:'점수득실률', width:'100'}
		]],
		method: 'GET', // 임시(나중에 post로)
		singleSelect: true,
		sortName: 'rank',
		onDblClickRow: function(index, row) {
			movePage(row);
		},
		fitColumns: true
	});
}

function movePage(row) {
	const team = row.team;
	// 페이지 이동
	let form = document.createElement('form');
    
    let object;
    object = document.createElement('input');
    object.setAttribute('type', 'hidden');
    object.setAttribute('name', 'team');
    object.setAttribute('value', team);
    
    form.appendChild(object);
    form.setAttribute('method', 'post');
    form.setAttribute('action', '/team.do');
    document.body.appendChild(form);
    form.submit();

}

</script>
</html>