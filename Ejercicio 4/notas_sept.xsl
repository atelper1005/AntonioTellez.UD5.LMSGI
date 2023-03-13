<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8"/>
	<xsl:template match="/notas">
		<html>
			<head>
				<title>Ejercicio XSLT de Jos&#233; Luis Comesa&#241;a</title>
				<style type="text/css">
					.azul1{background-color:#19D56F;}
					.azul2{background-color:#61EAA0;}
					.azul3{background-color:#99ECBF;}
					td{text-align: center;}
					h2{color:#0A0909; font-weight:bold; text-align:center;}
				</style>
			</head>
			<body>
				<div style="float:left; position:absolute; width:100%;">
					<h2>Calificaciones de la convocatoria de Septiembre</h2>
					<table border="3" align="center">
						<tr class="azul1">
							<th colspan="3">Datos</th>
							<th colspan="3">Notas</th>
						</tr>
						<tr class="azul2">
							<th>Nombres</th>
							<th>Apellidos</th>
							<th>Tareas</th>
							<th>Cuestionarios</th>
							<th>Examen</th>
							<th>Final</th>
						</tr>
						<xsl:apply-templates select="./alumno"/>
					</table>
				</div>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="//alumno">
		<xsl:if test="./@convocatoria='Septiembre'">
			<tr class="azul3">
				<td><xsl:value-of select="nombre"/></td>
				<td><xsl:value-of select="apellidos"/></td>
				<td><xsl:value-of select="cuestionarios"/></td>
				<td><xsl:value-of select="tareas"/></td>
				<td><xsl:value-of select="examen"/></td>
				<td>
 					<xsl:choose>
						<xsl:when test="final&gt;=9">
							<font color="green">Sobresaliente</font>
						</xsl:when>
						<xsl:when test="final&gt;=7">
							<font color="blue">Notable</font>
						</xsl:when>
						<xsl:when test="final&gt;=6">
							<font color="black">Bien</font>
						</xsl:when>
						<xsl:when test="final&gt;=5">
							<font color="orange">Suficiente</font>
						</xsl:when>
						<xsl:otherwise>
							<font color="red">Suspenso</font>
						</xsl:otherwise>
					</xsl:choose>
				</td>
			</tr>
		</xsl:if>
	</xsl:template>
	<xsl:template match="matricula"/>
</xsl:stylesheet>