<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <h2>Books Collection</h2>
        <table border="1">
          <tr bgcolor="#9acd32">
            <th style="text-align:left">Book Cover</th>
            <th style="text-align:left">FBT</th>
            <th style="text-align:left">ISBN</th>
            <th style="text-align:left">Title</th>
           
            <th style="text-align:left">Authors Name</th>
            <th style="text-align:left">Authors Office </th>
            <th style="text-align:left">Authors Phone </th>
            <th style="text-align:left">Publisher </th>
            <th style="text-align:left">Year </th>
            <th style="text-align:left">Edition </th>
            
          </tr>
          <xsl:for-each select="Books/Book">
            <tr>
              <td>
                <xsl:value-of select="@Cover"/>
              </td>
              <td>


                 <xsl:for-each select="FBT/ISBN">
                  <xsl:element name="ISBN">
                   
                      <xsl:value-of select="concat(text(),',')" />
                    <br/>
                    
                  </xsl:element>
                </xsl:for-each>
               
             
              </td>
              <td>
                <xsl:value-of select="ISBN"/>
              </td>
              <td>
                <xsl:value-of select="Title"/>
              </td>
              
              <td>

                <xsl:for-each select="Author/Name">
                  <xsl:element name="Name">
                    <Name>
                      <xsl:value-of select="normalize-space(concat(First,' ',Last,','))" />
                      <br/>
                    </Name>
                  </xsl:element>
                </xsl:for-each>
              </td>
              <td>
              <xsl:for-each select="Author/Contact">
                  <xsl:element name="Contact">
                    <Contact>
                      <xsl:value-of select="normalize-space(concat(@Office,','))" />
                      <br/>
                    </Contact>
                  </xsl:element>
                </xsl:for-each>
                </td>
              <td>
                <xsl:for-each select="Author/Contact">
                  <xsl:element name="Contact">
                    <Phone>
                      <xsl:value-of select="normalize-space(concat(Phone,','))" />
                      <br/>
                    </Phone>
                  </xsl:element>
                </xsl:for-each>
              </td>
              <td>
                <xsl:value-of select="Publisher"/>
              </td>
              <td>
                <xsl:value-of select="Year"/>
              </td>
              <td>
                <xsl:value-of select="Year/@Edition"/>
              </td>
              
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>