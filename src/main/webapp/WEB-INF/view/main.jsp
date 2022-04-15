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
	<button id="graphBtn">��ư</button>
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
			{field:'rank', title:'����'},
			{field:'team', title:'��'},
			{field:'win', title:'��'},
			{field:'lose', title:'��'},
			{field:'winScore', title:'����'},
			{field:'getSet', title:'�漼Ʈ'},
			{field:'lossSet', title:'�Ǽ�Ʈ'},
			{field:'setPercent', title:'��Ʈ��Ƿ�'},
			{field:'getScore', title:'����'},
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
	console.log(row);
}

</script>
</html>