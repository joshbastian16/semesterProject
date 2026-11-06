<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    <xsl:output method="html" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
 
    <xsl:template match="/">
        <html>
            
            <head>
                <title>chapter <xsl:value-of select="/chapter/@num"/></title>
                
            </head>
            <body>
                <xsl:apply-templates select="//page"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="caption | bubble">
        <p><xsl:value-of select="."/></p>
    </xsl:template>
    <xsl:template match="page">
        <div class="page" num="{count(preceding-sibling::page) + 1}"><xsl:apply-templates/></div>
    </xsl:template>
</xsl:stylesheet>