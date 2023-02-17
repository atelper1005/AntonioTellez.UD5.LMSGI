<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1>Mi biblioteca personal</h1>
        <table>
        <tr bgcolor="46C891">
            <th>ISBN</th>
            <th>Título</th>
            <th>Autor</th>
            <th>Precio</th>
        </tr>
        <xsl:for-each select="libreria/libro">
        <xsl:sort select="precio"/>
        <tr>
            <xsl:choose>
            <xsl:when test="precio &gt; 25">
            <td bgcolor="red"><xsl:value-of select="isbn"/></td>
            <td bgcolor="red"><xsl:value-of select="titulo"/></td>
            <td bgcolor="red"><xsl:value-of select="autor"/></td>
            <td bgcolor="red"><xsl:value-of select="precio"/></td>
            </xsl:when>
            <xsl:otherwise>
                <td bgcolor="green"><xsl:value-of select="isbn"/></td>
                <td bgcolor="green"><xsl:value-of select="titulo"/></td>
                <td bgcolor="green"><xsl:value-of select="autor"/></td>
                <td bgcolor="green"><xsl:value-of select="precio"/></td>
            </xsl:otherwise>
            </xsl:choose>
        </tr>
        </xsl:for-each>
    </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>