<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="chartist.js"></script>
<link rel="stylesheet" type="text/css" href="chartist.css">
<link rel="stylesheet" type="text/scss" href="src/chartist.scss">
</head>
<body>
<div class="ct-chart chart"></div>
	<script>
		new Chartist.Line('.ct-chart', {
			labels: [${labels}],
			series: [${series}],
		}, {
			width: 700,
			height: 250,
			chartPadding: {
				right: 40
			},
			plugins: [
				Chartist.plugins.tooltip()
			]
		});
	</script>
</body>
</html>