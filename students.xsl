<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    
    <!-- Template that matches the root of the XML document -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Student Records</title>
                <style>
                    table { width: 100%; border-collapse: collapse; }
                    th, td { border: 1px solid #000; padding: 8px; text-align: left; }
                    th { background-color: #f2f2f2; }
                </style>
            </head>
            <body>
                <h1><xsl:value-of select="students/heading"/></h1>
                <table>
                    <tr>
                        <th>Name</th>
                        <th>Roll No</th>
                        <th>Course</th>
                        <th>Year</th>
                        <th>Grade</th>
                    </tr>
                    <!-- Loop through each student element in the XML -->
                    <xsl:for-each select="students/student">
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="rollno"/></td>
                            <td><xsl:value-of select="course"/></td>
                            <td><xsl:value-of select="year"/></td>
                            <td><xsl:value-of select="grade"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
