<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    
   <xsl:mode on-no-match="shallow-copy"/>

    <xsl:variable name="lowLevelColl" as="document-node()+" 
        select="collection('chapter_xml/?select=*.xml')"/>
    
    
    <xsl:template match="caption[@type='information']">
        <xsl:analyze-string select="current()" regex="[^w]\s*(\[?[A-Z]+?:\s+\d+\]?)">
            <xsl:matching-substring>
                <info><xsl:value-of select="regex-group(1)"/></info>
            </xsl:matching-substring>
            <xsl:non-matching-substring>
                
                 <xsl:value-of select="current()"/>
                
            </xsl:non-matching-substring>
            
            
        </xsl:analyze-string>
        
        
        
    </xsl:template>



</xsl:stylesheet>