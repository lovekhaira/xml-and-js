<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html style="font-family: Times New Roman;">
            <body style="width: 80%; margin: 0 auto;">
                <h3 >Shippable Products</h3>
                <table border="2">
                    <tr>
                        <th>Product name</th>
                        <th>Manufacturer</th>
                        <th>Description</th>
                        <th>USD price</th>
                    </tr>
                    <xsl:for-each select = 'products/product[@shippable="true"]'>
                        <tr>
                            <td><xsl:value-of select="productName"/></td>
                            <td><xsl:value-of select="manufacturer"/></td>
                            <td><xsl:value-of select="description"/></td>
                            <td><xsl:value-of select="prices/price[1]"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <h3>ACME Products</h3>
                <table border="2">
                    <tr>
                        <th>Product name</th>
                        <th>Description</th>
                        <th>USD price</th>
                        <th>Euro price</th>
                    </tr>
                    <xsl:for-each select = 'products/product/manufacturer[@id="acme"]'>
                        <tr>
                            <td><xsl:value-of select='../productName'/></td>
                            <td><xsl:value-of select='../description'/></td>
                            <td><xsl:value-of select='../prices/price[1]'/></td>
                            <td><xsl:value-of select='../prices/price[3]'/></td>
                        </tr>
                    </xsl:for-each>
                </table>            
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>