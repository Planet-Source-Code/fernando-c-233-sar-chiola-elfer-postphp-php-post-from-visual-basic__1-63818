<!-- VB WinSock -->
<?php 
   include("conex.phtml"); 
   $link=Conectarse(); 
   $GetUser=$_GET['User'];
   $GetPass=$_GET['Pass'];
   $GetEF01=$_GET['EF01'];
   $GetEF02=$_GET['EF02'];
   $GetEF03=$_GET['EF03'];
   $GetEF04=$_GET['EF04'];
   $GetEF05=$_GET['EF05'];
   $GetEF06=$_GET['EF06'];
   $GetEF07=$_GET['EF07'];
   $GetEF08=$_GET['EF08'];
   mysql_query("insert into Users (User,Pass,ExtraField01,ExtraField02,ExtraField03,ExtraField04,ExtraField05,ExtraField06,ExtraField07,ExtraField08) values ('$GetUser','$GetPass','$GetEF01','$GetEF02','$GetEF03','$GetEF04','$GetEF05','$GetEF06','$GetEF07','$GetEF08')",$link);
?>