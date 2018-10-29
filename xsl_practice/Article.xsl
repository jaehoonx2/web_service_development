<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <p>Article - <xsl:value-of select="Article/Title"/></p>
    Authors: <xsl:apply-templates select="Article/Authors/Author"/>
  </xsl:template>

  <xsl:template match="Author">
   <p>- <xsl:value-of select="." /></p> 
  </xsl:template>

</xsl:stylesheet>