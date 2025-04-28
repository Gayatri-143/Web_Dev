<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<head>
  <title>Student Data</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: linear-gradient(135deg, #667eea, #764ba2, #fc5c7d, #ff9966);
      color: white;
      padding: 20px;
    }
    table {
      width: 80%;
      margin: auto;
      border-collapse: collapse;
      background-color: rgba(0, 0, 0, 0.5);
    }
    th, td {
      padding: 10px;
      border: 1px solid #fff;
      text-align: center;
    }
    th {
      background-color: rgba(255, 255, 255, 0.2);
    }
  </style>
</head>
<body>
  <h2 align="center">Student Information</h2>
  <table>
    <tr>
      <th>Name</th>
      <th>Roll No</th>
      <th>Class</th>
      <th>Marks (Subjects)</th>
    </tr>
    <xsl:for-each select="school/student">
    <tr>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="rollNo"/></td>
      <td><xsl:value-of select="class"/></td>
      <td>
        <xsl:for-each select="marks/subject">
          <xsl:value-of select="@name"/>: <xsl:value-of select="."/> <br/>
        </xsl:for-each>
      </td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>

</xsl:stylesheet>
