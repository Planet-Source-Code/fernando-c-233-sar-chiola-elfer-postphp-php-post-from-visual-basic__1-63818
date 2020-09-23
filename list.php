<!-- VB WinSock -->
<html>
<head>
	<title>-- VB WinSock --</title>
</head>
<body>
<H1>-- VB WinSock --</H1>
<?php
	include("conex.phtml");
	$link=Conectarse();
	$result=mysql_query("select * from Users",$link);
?>
	<TABLE BORDER=1 CELLSPACING=1 CELLPADDING=1>
		<TR><TD>[   User   ]</TD><TD>[   Pass   ]</TD><TD>[ Extra01 ]</TD><TD>[ Extra02 ]</TD><TD>[ Extra03 ]</TD><TD>[ Extra04 ]</TD><TD>[ Extra05 ]</TD><TD>[ Extra06 ]</TD><TD>[ Extra07 ]</TD><TD>[ Extra08 ]</TD></TR>
<?php		

	while($row = mysql_fetch_array($result)) {
		printf("<tr><td> %s </td><td> %s </td><td>  %s </td><td>  %s </td><td>  %s </td><td>  %s </td><td>  %s </td><td> %s </td><td> %s </td><td> %s </td></tr>", $row["User"],$row["Pass"],$row["ExtraField01"],$row["ExtraField02"],$row["ExtraField03"],$row["ExtraField04"],$row["ExtraField05"],$row["ExtraField06"],$row["ExtraField07"],$row["ExtraField08"]);
	}
	mysql_free_result($result);
	mysql_close($link);
?>
</table>
</body>
</html>