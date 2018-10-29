<xsl:stylesheet>
    <xsl:template match="/">
        <html>
        <head>
            <title>XML XSL Example</title>
            <style type="text/css">
                body {
                    margin: 10px;
                    background-color: gray;
                    font-family: verdana, helvetica, sans-serif;
                }

                .tutorial-name {
                    display: block;
                    color: green;
                    font-weight: bold;
                }

                .tutorial-url {
                    display: block;
                    color: blue;
                    font-size: small;
                    font-style: italic;
                }
            </style>
        </head>
        <body>
            <h2>Cool Tutorials</h2>
            <p>Hey, check out these tutorials!</p>
            <xsl:apply-templates />
        </body>
        </html>
    </xsl:template>
    <xsl:template match="tutorials/tutorial">
        <span class="tutorial-name">
            <xsl:value-of select="name" /></span>
        <span class="tutorial-url">
            <xsl:value-of select="url" /></span>
    </xsl:template>
</xsl:stylesheet>
