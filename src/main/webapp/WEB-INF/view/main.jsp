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
<link rel="stylesheet" type="text/css" href="/css/easyui/themes/color.css">
   
<!--easyui javascript import-->
<script type="text/javascript" src="/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/jquery.easyui.min.js"></script>

<body>
<div>
	<button id="graphBtn">버튼</button>
</div>
<div>
	<table id="grid" class="easyui-datagrid" style="width:665px">
	</table>
</div>
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
			{field:'getSet', title:'득세트'},
			{field:'lossSet', title:'실세트'},
			{field:'setPercent', title:'세트득실률'},
			{field:'getScore', title:'득점'},
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
	// 페이지 이동	
	console.log(row);
}

</script>
</html>