<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="Nuestros_Coches">

<html>
<head>
<title>Coches</title>
<style>
  h1{
    text-align:center;
    color:#f44242;
    font-family: 'Walter Turncoat', cursive;
  }
img {
border: 5px solid #ccc;
float: left;
margin: 15px;
-webkit-transition: margin 0.5s ease-out;
-moz-transition: margin 0.5s ease-out;
-ms-transition: margin 0.5s ease-out;
transition: margin 0.5s ease-out;
}
img:hover {
margin-top: 2px;
}
</style>
</head>
<body>
<h1>Nuestros Coches</h1>

<xsl:for-each select="Coche">
<div class="Coche" style="float: left; width: 300px;">
  <div style="float: left;">
     <xsl:element name="img">
       <xsl:attribute name="src">
         <xsl:value-of select="imagen/@ruta"/>
       </xsl:attribute>
     </xsl:element>
</div>
  <ul  style="float: left;">
    <li><xsl:value-of select="Nombre"/></li>
    <li><xsl:value-of select="Cilindrada"/></li>
    <li><xsl:value-of select="Admision"/></li>
  </ul>
</div>
</xsl:for-each>

</body>
</html>
</xsl:template>
</xsl:stylesheet>
