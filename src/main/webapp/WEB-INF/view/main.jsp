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
	
	<button id="graphBtn">버튼</button>
	<div id="b_content">
		<table id="grid" class="easyui-datagrid" style="width:665px" data-options="singleSelect:true, onDblClickRow:function(index, row) {movePage(row);}">
			<thead>
		        <tr>
		            <th data-options="field:'rank', width:60">Code</th>
		            <th data-options="field:'team', width:60">Name</th>
		            <th data-options="field:'win', width:60">Price</th>
		            <th data-options="field:'lose', width:60">Code</th>
		            <th data-options="field:'winScore', width:60">Name</th>
		            <th data-options="field:'gotSet', width:60">Price</th>
		            <th data-options="field:'lossSet', width:60">Code</th>
		            <th data-options="field:'setPercent', width:60">Name</th>
		            <th data-options="field:'gotScore', width:60">Price</th>
		            <th data-options="field:'lossScore', width:60">Name</th>
		            <th data-options="field:'scorePercent', width:60">Price</th>
		        </tr>
		    </thead>
		    <tbody>
		        <tr>
		            <td>001</td><td>name1</td><td>2323</td><td>001</td><td>name1</td><td>2323</td><td>001</td><td>name1</td><td>2323</td><td>name1</td><td>2323</td>
		        </tr>
		        <tr>
		            <td>002</td><td>name2</td><td>4612</td><td>002</td><td>name2</td><td>4612</td><td>002</td><td>name2</td><td>4612</td><td>002</td><td>name2</td>
		        </tr>
		        <tr>
		            <td>003</td><td>name3</td><td>2323</td><td>003</td><td>name3</td><td>2323</td><td>003</td><td>name3</td><td>2323</td><td>003</td><td>name3</td>
		        </tr>
		        <tr>
		            <td>004</td><td>name4</td><td>4612</td><td>004</td><td>name4</td><td>4612</td><td>004</td><td>name4</td><td>4612</td><td>004</td><td>name4</td>
		        </tr>
		        <tr>
		            <td>005</td><td>name5</td><td>2323</td><td>005</td><td>name5</td><td>2323</td><td>005</td><td>name5</td><td>2323</td><td>005</td><td>name5</td>
		        </tr>
		        <tr>
		            <td>006</td><td>name6</td><td>4612</td><td>006</td><td>name6</td><td>4612</td><td>006</td><td>name6</td><td>4612</td><td>006</td><td>name6</td>
		        </tr>
		        <tr>
		            <td>007</td><td>name7</td><td>4612</td><td>006</td><td>name7</td><td>4612</td><td>007</td><td>name7</td><td>4612</td><td>007</td><td>name7</td>
		        </tr>
		    </tbody>
		</table>
	</div>
	
	<footer></footer>
</body>
<script>
/* $(document).ready(function(){
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
} */

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