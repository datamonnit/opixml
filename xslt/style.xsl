<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" href="style.css"/>
            </head>
            <body>
            <h1>Vieraskirja</h1>
            <hr/>
            <ul style="list-style-type: none;">
                <xsl:for-each select="data/viesti">
                    <xsl:sort select="lähettäjä" order="descending"/>
                    <xsl:choose test="vuosi > 2019">
                        <xsl:when test="vuosi >= 2020">
                            <li style="border: 1px solid red;">
                                <h2><xsl:value-of select="aihe"/></h2>
                                <p><xsl:value-of select="teksti"/></p>
                                <p><xsl:value-of select="lähettäjä"/></p>
                            </li>
                        </xsl:when>
                        <xsl:otherwise>
                            <li style="border: 1px solid black;">
                                <h2><xsl:value-of select="aihe"/></h2>
                                <p><xsl:value-of select="teksti"/></p>
                                <p><xsl:value-of select="lähettäjä"/></p>
                            </li>
                        </xsl:otherwise>       
                    </xsl:choose>
                </xsl:for-each>
            </ul>        
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>