<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <style>
                h1{
                    font-family: Cambria;
                    color: red;
                }
                h3{
                    font-family:calibri;
                }
                p{
                    font-size:16px;
                    font-weight:bold;
                }
                table,th,td{
                    border: 1.5px solid black;
                }
                table{
                    border-collapse:collapse;
                }
                th{
                    background-color:lightblue;
                    padding:2px;
                }
                td{
                    text-align:center;
                    font-size:14px;
                    padding:5px;
                    vertical-align:middle;
                }
                table.nest tr th{
                    background-color:limegreen;
                }
            </style>
            <body>
                <h1>Catalog</h1>
                    <xsl:for-each select="catalog/product">
                        <ul>
                            <li>
                            <article>
                                <h3><xsl:value-of select="@product_id"/></h3>
                                <p><xsl:value-of select="@description"/></p>
                                <table>
                                    <tr>
                                        <th>Item number</th>
                                        <th>Price</th>
                                        <th>Gender</th>
                                        <th>Small</th>
                                        <th>Medium</th>
                                        <th>Large</th>
                                        <th>Extra Large</th>
                                    </tr>
                                    <xsl:for-each select="catalog_item">
                                        <tr>
                                            <td><xsl:value-of select="(item_number)[text()]"/></td>
                                            <td><xsl:value-of select="(price)[text()]"/></td>
                                            <td>
                                                <xsl:choose>
                                                    <xsl:when test="@gender='Men'">M</xsl:when>
                                                    <xsl:when test="@gender='Women'">W</xsl:when>
                                                </xsl:choose>
                                            </td>
                                            <td>
                                                <xsl:if test="size/@description='Small'">
                                                    <table class="nest">
                                                        <tr>
                                                            <th>Color</th>
                                                            <th>Image</th>
                                                        </tr>
                                                        <xsl:for-each select="size[@description='Small']/color_swatch">
                                                            <tr>
                                                                <td><xsl:value-of select="."/></td>
                                                                <td><xsl:value-of select="@image"/></td>
                                                            </tr>
                                                        </xsl:for-each>
                                                    </table>
                                                </xsl:if>
                                            </td>
                                            <td>
                                                <xsl:if test="size/@description='Medium'">
                                                    <table class="nest">
                                                        <tr>
                                                            <th>Color</th>
                                                            <th>Image</th>
                                                        </tr>
                                                        <xsl:for-each select="size[@description='Medium']/color_swatch">
                                                            <tr>
                                                                <td><xsl:value-of select="."/></td>
                                                                <td><xsl:value-of select="@image"/></td>
                                                            </tr>
                                                        </xsl:for-each>
                                                    </table>
                                                </xsl:if>
                                            </td>
                                            <td>
                                                <xsl:if test="size/@description='Large'">
                                                    <table class="nest">
                                                        <tr>
                                                            <th>Color</th>
                                                            <th>Image</th>
                                                        </tr>
                                                        <xsl:for-each select="size[@description='Large']/color_swatch">
                                                            <tr>
                                                                <td><xsl:value-of select="."/></td>
                                                                <td><xsl:value-of select="@image"/></td>
                                                            </tr>
                                                        </xsl:for-each>
                                                    </table>
                                                </xsl:if>
                                            </td>
                                            <td>
                                                <xsl:if test="size/@description='Extra Large'">
                                                    <table class="nest">
                                                        <tr>
                                                            <th>Color</th>
                                                            <th>Image</th>
                                                        </tr>
                                                        <xsl:for-each select="size[@description='Extra Large']/color_swatch">
                                                            <tr>
                                                                <td><xsl:value-of select="."/></td>
                                                                <td><xsl:value-of select="@image"/></td>
                                                            </tr>
                                                        </xsl:for-each>
                                                    </table>
                                                </xsl:if>
                                            </td>
                                        </tr>
                                    </xsl:for-each>
                                </table>
                            </article>
                        </li>
                    </ul>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>