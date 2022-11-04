<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">   
  <xsl:template match="/"> 	
    <html> 
      <body> 
        <h2>University</h2> 
				
        <table border="1"> 
          <tr bgcolor="#9acd32">
            <th>University Name</th> 
            <th>Street</th>
            <th>City</th>
            <th>Region</th>
            <th>Country</th>
            <th>Zip Code</th> 
          </tr> 
			<xsl:for-each select="root/row"> 
                <tr>
                    <td><xsl:value-of select="name"/></td> 
                    <td><xsl:value-of select="address/street"/></td> 
                    <td><xsl:value-of select="address/city"/></td> 
                    <td><xsl:value-of select="address/region"/></td> 
                    <td><xsl:value-of select="address/country"/></td> 
                    <td><xsl:value-of select="address/zipCode"/></td> 
				</tr> 
            </xsl:for-each> 
        </table> 

        <h2>Courses</h2> 
				
        <table border="1"> 
          <tr bgcolor="#9acd32">
            <th>Course ID</th> 
            <th>Title</th>
            <th>Description</th> 
          </tr> 
			<xsl:for-each select="root/row"> 
                <tr>
                    <td><xsl:value-of select="courses/id"/></td> 
                    <td><xsl:value-of select="courses/title"/></td> 
                    <td><xsl:value-of select="courses/description"/></td> 
				</tr> 
            </xsl:for-each> 
        </table> 

        <h2>Students</h2> 
				
        <table border="1"> 
          <tr bgcolor="#9acd32">
            <th>Student ID</th> 
            <th>First Name</th>
            <th>Last Name</th>
            <th>Date of Birth</th>
            <th>Email</th>
          </tr> 
			<xsl:for-each select="root/row"> 
                <tr>
                    <td><xsl:value-of select="students/id"/></td> 
                    <td><xsl:value-of select="students/firstName"/></td> 
                    <td><xsl:value-of select="students/lastName"/></td> 
                    <td><xsl:value-of select="students/dob"/></td> 
                    <td><xsl:value-of select="students/email"/></td> 
				</tr> 
      </xsl:for-each> 
      </table> 

      <h2>Faculty</h2> 
				
        <table border="1"> 
          <tr bgcolor="#9acd32">
            <th>Faculty ID</th> 
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Phone Number</th>
          </tr> 
			<xsl:for-each select="root/row"> 
                <tr>
                    <td><xsl:value-of select="faculty/id"/></td> 
                    <td><xsl:value-of select="faculty/firstName"/></td> 
                    <td><xsl:value-of select="faculty/lastName"/></td> 
                    <td><xsl:value-of select="faculty/email"/></td> 
                    <td><xsl:value-of select="faculty/phoneNumber"/></td> 
				</tr> 
      </xsl:for-each> 
      </table> 
        
      </body> 
    </html> 
  </xsl:template>  
</xsl:stylesheet>