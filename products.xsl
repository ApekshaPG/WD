<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Product List</title>
                <style>
                    ul { font-family: Arial, sans-serif; }
                    li { margin: 10px 0; }
                </style>
            </head>
            <body>
                <h1>Product Catalog</h1>
                <ul>
                    <xsl:for-each select="products/product">
                        <li>
                            <strong><xsl:value-of select="name"/></strong> 
                            <xsl:value-of select="category"/> - 
                            $<xsl:value-of select="price"/>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
