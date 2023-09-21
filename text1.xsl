<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>
  
  <xsl:template match="/">
    <html>
      <body>
        <ul>
          <xsl:apply-templates select="employees/employee"/>
        </ul>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="employee">
    <li>
      <xsl:value-of select="concat(name, ' - ', department, ' - ', job-title, ' - ', salary, ' - ', email)"/>
    </li>
  </xsl:template>
</xsl:stylesheet>