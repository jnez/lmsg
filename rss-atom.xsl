<?xml version="1.0"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
<xsl:template match="channel">
    
    <feed xmlns="http://www.w3.org/2005/Atom">
        
        <title>Noticias IES Miguel Herrero Pereda</title>
        <subtitle>Feed de noticias del instituto Miguel Herrero Pereda, en Torrelavega.</subtitle>
        <link href="http://localhost/atom/ies.atom"/>
        <updated>2002-10-02T10:00:00-05:00</updated>
        <id>http://localhost/atom/ies.atom</id>
        <link><xsl:attribute name="rel">self</xsl:attribute><xsl:attribute name="href">http://localhost/atom/ies.atom</xsl:attribute></link>
        
        <xsl:for-each select="item">
        <entry>
            <id><xsl:value-of select="link"/></id>
            <title><xsl:value-of select="title"/></title>
            <link><xsl:attribute name="rel">alternate</xsl:attribute><xsl:attribute name="href"><xsl:value-of select="link"/></xsl:attribute></link>
            <updated>2002-10-02T10:00:00-05:00</updated>
            <author><name>IES Miguel Herrero Pereda</name></author>
            <summary><xsl:value-of select="description"/></summary>
            
        </entry>
        </xsl:for-each>
    </feed>
    
</xsl:template>

</xsl:transform>