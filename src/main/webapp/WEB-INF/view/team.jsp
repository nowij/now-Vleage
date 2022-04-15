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
#b_content {
	display:flex;
	flex-direction:row;
	padding:20px;
}

#ngDiv {
	width:50%;
	text-align:center;
	padding:15%;
}

#trDiv {
	width:500px;
	padding:5px;
}
</style>

<body>
	<header>
			<div class="h_content">${team}</div>
	</header>
	<div class="b_content">
		<div id="ngDiv">next</div>
		<div id="trDiv">
			<div id="rank">current</div>
			<table id="trTable" class="easyui-datagrid">
				<thead>
			        <tr>
			            <th data-options="field:'rank', width:60">Code</th>
			            <th data-options="field:'team', width:60">Name</th>
			            <th data-options="field:'win', width:60">Price</th>
			        </tr>
			    </thead>
			</table>
		</div>
	</div>
	<footer></footer>
</body>

<script type="text/javascript">
</script>
</html>