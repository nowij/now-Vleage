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
.right_content {
	margin-left:45%;
	padding:5px;
}
</style>

<body>
	<header></header>
	<div class="main_content">
		<div class="table_header_content">
			<button id="graphBtn" class="easyui-linkbutton">�׷���</button>
		</div>
		
		<div>
			<table id="grid" class="easyui-datagrid" style="width:1105px"></table>
		</div>
	</div>
	
	<footer></footer>
</body>
<script>
$(document).ready(function(){
	setGrid();	
});

function setGrid() {
	$('#grid').datagrid({
		url: '',
		columns: [[
			{field:'rank', title:'����'},
			{field:'team', title:'��'},
			{field:'win', title:'��'},
			{field:'lose', title:'��'},
			{field:'winScore', title:'����'},
			{field:'gotSet', title:'�漼Ʈ'},
			{field:'lossSet', title:'�Ǽ�Ʈ'},
			{field:'setPercent', title:'��Ʈ��Ƿ�'},
			{field:'gotScore', title:'����'},
			{field:'lossScore', title:'����'},
			{field:'scorePercent', title:'������Ƿ�'}
		]],
		singleSelect: true,
		sortName: 'rank',
		onDblClickRow: function(index, row) {
			movePage(row);
		}
	});
}

function movePage(row) {
	const team = row.team;
	// ������ �̵�
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