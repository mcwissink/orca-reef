<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output indent="yes"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="*">
        <xsl:copy>
            <xsl:for-each select="@*">
                <xsl:sort select="name()" data-type="text" order="ascending"/>
                <xsl:copy>
                    <xsl:value-of select="."/>
                </xsl:copy>
            </xsl:for-each>
            <xsl:apply-templates select="node()"/>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>