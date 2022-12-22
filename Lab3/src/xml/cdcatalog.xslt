<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
        <html>
            <body>
                <h2>My CD Collection</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Title</th>
                        <th>Artist</th>
                        <th>Price</th>
                    </tr>
                    <xsl:for-each select="catalog/cd">
                        <xsl:sort select="artist" />
                        <xsl:if test="year &gt; 1990">

                    <tr>
                        <td>
                            <xsl:value-of select="title" />
                        </td>
                        <td>
                            <xsl:value-of select="artist" />
                        </td>
                        <xsl:choose>
                            <xsl:when test="price &gt; 10">


                                <td bgcolor="#ff0000" >
                                    <xsl:value-of select="price" />
                                </td>
                            </xsl:when>
                            <xsl:when test="price &gt; 8 and price &lt; 10">


                                <td bgcolor="#0000ff" >
                                    <xsl:value-of select="price" />
                                </td>
                            </xsl:when>
                            <xsl:otherwise>
                                <td bgcolor="#00ff00" >
                                    <xsl:value-of select="price" />
                                </td>
                            </xsl:otherwise>
                        </xsl:choose>

                    </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
