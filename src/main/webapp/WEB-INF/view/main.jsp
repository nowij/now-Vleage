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

<body>
	<header></header>
	<div class="b_content" style="padding:10px">
		<button id="graphBtn" class="easyui-linkbutton" style="width:5%;">그래프</button>
	</div>
	
	<div class="b_content">
		<table id="grid" class="easyui-datagrid" style="width:665px"></table>
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
			{field:'rank', title:'순위'},
			{field:'team', title:'팀'},
			{field:'win', title:'승'},
			{field:'lose', title:'패'},
			{field:'winScore', title:'승점'},
			{field:'gotSet', title:'득세트'},
			{field:'lossSet', title:'실세트'},
			{field:'setPercent', title:'세트득실률'},
			{field:'gotScore', title:'득점'},
			{field:'lossScore', title:'실점'},
			{field:'scorePercent', title:'점수득실률'}
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
	console.log(team);
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