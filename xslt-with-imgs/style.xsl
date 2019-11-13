<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
    <title>XSL-tyyliesimerkki</title>
    <style>
    .mylist {
        margin: 0; padding: 0;
    }
    .mylist li{
        list-style-type: none;
    }
    </style>
  </head>
  <body>
  <h2>Gallery</h2>
  
  <ul class="mylist">
    <xsl:for-each select="data/pic">
      <li>
        <img alt="coverart">
            <xsl:attribute name="src">img/<xsl:value-of select="url"/></xsl:attribute>
            <xsl:attribute name="alt"><xsl:value-of select="caption"/></xsl:attribute>
        </img>    
      </li>
    </xsl:for-each>
  </ul>

  </body>
  </html>
</xsl:template>

</xsl:stylesheet>