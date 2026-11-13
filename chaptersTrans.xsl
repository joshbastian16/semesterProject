<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0" xmlns="http://www.w3.org/1999/xhtml" > 
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/> 
 
    <xsl:template match="/">
        <html>
            
            <head>
                <title>chapter <xsl:value-of select="/chapter/@num"/></title>
                <link rel="stylesheet" type="text/css" href="formatWebsite.css"/>
                <link rel="icon" href="images/icon.jpg"/>
            </head>
            <body>
                <nav class="navbar">
                    <a href="index.html"><img src="images/SL_HomePic.jpg" alt="This is the image go to home page" width="100" height="50"/></a>
                    <ul class="menu">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="method.html">Method</a></li>
                        <li><a href="chapters.html">Chapters</a></li>
                        <li><a href="data.html">Data</a></li>
                        <li><a href="resources.html">Resources</a></li>
                    </ul>
                </nav>
                <xsl:apply-templates select="//page"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="caption | bubble">
        <p><xsl:value-of select="."/></p>
    </xsl:template>
    <xsl:template match="page">
        <div class="page container" num="{count(preceding-sibling::page) + 1}"><xsl:apply-templates/></div>
    </xsl:template>
</xsl:stylesheet>