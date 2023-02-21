<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Actividad 5.5</h1>
                <xsl:apply-templates />
            </body>
        </html>
    </xsl:template>
    <xsl:template match="libreria">
        <h2>Mi biblioteca personal</h2>
        <table>
            <tr bgcolor="#887788">
                <th>ISBN</th>
                <th>Título</th>
                <th>Autor</th>
                <th>Precio</th>
                <th>Páginas</th>
            </tr>
            <xsl:apply-templates select="libro" />
        </table>
    </xsl:template>
    <xsl:template match="libro">
        <tr>
           
            <td>
                <xsl:apply-templates select="isbn" />
            </td>
          
            <xsl:apply-templates select="titulo" />
            
            <xsl:apply-templates select="autor" />
            
            <td>
                <xsl:value-of select="precio" />
            </td>
            
            <xsl:apply-templates select="numPaginas" />
        </tr>
    </xsl:template>
    <!-- Plantilla para el ISNB -->
    <xsl:template match="isbn">
        <td bgcolor="#AECCAF">
            <xsl:value-of select="." />
        </td>
    </xsl:template>
    <!-- Plantilla para el título -->
    <xsl:template match="titulo">
        <td bgcolor="#DDEEDD">
            <xsl:value-of select="." />
        </td>
    </xsl:template>
    <!-- Plantilla para el autor -->
    <xsl:template match="autor">
        <td bgcolor="#AABBAA">
            <xsl:value-of select="." />
        </td>
    </xsl:template>
    <!-- Plantilla para el precio -->
    <xsl:template match="precio">
        <td bgcolor="#BEAECC">
            <xsl:value-of select="." />
        </td>
    </xsl:template>
    <!-- Plantilla para el número de páginas -->
    <xsl:template match="numPaginas">
        <xsl:choose>
            <!-- Rojo si tiene más de 150 páginas -->
            <xsl:when test=". &gt; 150">
                <td bgcolor="#ff0000">
                    <xsl:value-of select="." />
                </td>
            </xsl:when>
            <!-- Sin color por defecto -->
            <xsl:otherwise>
                <td bgcolor="#FFF">
                    <xsl:value-of select="." />
                </td>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>