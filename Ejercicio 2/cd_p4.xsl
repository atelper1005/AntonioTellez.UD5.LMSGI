<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Mi biblioteca CD's</h1>
                <table border="2">
                    <tr bgcolor="#218024">
                        <th>Titulo</th>
                        <th>Artista</th>
                        <th>Sello</th>
                        <th>Año</th>
                        <th>Canciones</th>
                        <th>Duracion</th>
                    </tr>
                    <xsl:for-each select="Lista/CD">
                        <xsl:variable name="titulo">
                            <xsl:value-of select="titulo"/>
                        </xsl:variable>
                        <xsl:variable name="artista">
                            <xsl:value-of select="artista"/>
                        </xsl:variable>
                        <xsl:variable name="sello">
                            <xsl:value-of select="sello"/>
                        </xsl:variable>
                        <xsl:variable name="año">
                            <xsl:value-of select="año"/>
                        </xsl:variable>
                        <xsl:for-each select="cancion">
                            <xsl:if test="@tiempo &lt; 200">
                                <tr>                                    
                                    <td>
                                        <xsl:value-of select="$titulo"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="$artista"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="$sello"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="$año"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="."/>
                                        <br/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="@tiempo"/>
                                    </td>
                                </tr>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> 