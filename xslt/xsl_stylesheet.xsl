<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
    <title>XSL-tyyliesimerkki</title>
    <style>
    .mylist {
      list-style-type: none;
      margin: 0;
      padding: 0;
    }
    .mylist li {
      margin: 10px 0;
      padding: 0;
    }
    </style>
  </head>
  <body>
  <h2>My CD Collection</h2>
  
  <ul class="mylist">
    <xsl:for-each select="catalog/cd">
      <xsl:sort select="year" order="descending"/>
      <xsl:sort select="artist" order="ascending"/>

      <li>
        <xsl:value-of select="artist"/>,
        <em><xsl:value-of select="year"/></em>
      </li>
    </xsl:for-each>
  </ul>

  </body>
  </html>
</xsl:template>

</xsl:stylesheet>