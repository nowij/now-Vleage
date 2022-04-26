<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
</head>
<link rel="stylesheet" type="text/css" href="/css/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="/css/themes/icon.css">
<link rel="stylesheet" type="text/css" href="/css/themes/color.css">

<link rel="stylesheet" type="text/css" href="/css/common.css">
   
<!--easyui javascript import-->
<script type="text/javascript" src="/js/jquery.min.js"></script>
<script type="text/javascript" src="/js/jquery.easyui.min.js"></script>
<body>
<div>
	<table class="easyui-datagrid">
		<thead>
			<tr>
				<th data-options="field:'scdlNo'">��ȣ</th>
				<th data-options="field:'scdlId'">������</th>
				<th data-options="field:'scdlCron'">ũ�н�</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td id="scdlNoInp">${vo.scdlNo}</td>
				<td>
					<input type="text" id="scdlIdInp" class="datagrid-textbox">
					<c:if test="${vo.operation} =='MODI'">
						${vo.scdlId}
					</c:if>
				</td>
				<td>
					<input type="text" id="scdlCronInp" class="datagrid-textbox">
					<c:if test="${vo.scdlCron} == 'MODI'">
						${vo.scdlCron}
					</c:if>	
				</td>
			</tr>
		</tbody>
	</table>
	<br/>
	<button class="btn" onclick="doSave('${vo.operation}')">����</button>
	<button class="btn" onclick="doClose()">���</button>
</div>
</body>
</html>