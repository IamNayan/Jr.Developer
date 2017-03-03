
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Registration Page</title>
</head>
<body>
<center>
<h1>Welcome to Registration  Page</h1>
<center><h4>Registration Form</h4></center>
<div>

<form name="RegistUser" action="welcome" method="post" onsubmit="return matchpass()">

<div class="form"> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label for="uname">Username</label>
<input type="text" name="uname"><br>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label for="upass">Password</label>
<input type="password" name="upass"><br>

<label for="cpass">Confirm Password</label>
<input type="password" name="cpass"><br>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label for="fname">FirstName</label>
<input type="text" name="fname"><br>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label for="lname">LastName</label>
<input type="text" name="lname"><br>


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label for="uemail">Email</label>
<input type="text" name="uemail"><br>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label for="umob">Phone No</label>
<input type="text" name="umob"><br>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label for="uadd">Location</label>
<input type="text" name="uadd"><br>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Save">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="Reset"></div>
</form>



</div>


</center>

</body>
<script  type="text/javascript">
function matchpass(){ 	
	var name=document.RegistUser.uname.value;  
	var password=document.RegistUser.upass.value; 	
	var password2=document.RegistUser.cpass.value; 	
	var fnname=document.RegistUser.fname.value;
	var lnname=document.RegistUser.lname.value;	
	var namealpha=/^[a-z A-Z]+$/;
	var remail=document.RegistUser.uemail.value;
	var mob=document.RegistUser.umob.value;	
	var add=document.RegistUser.uadd.value;	
	var atposition=remail.indexOf("@");  
	var dotposition=remail.lastIndexOf(".");
	
	if (name==null || name=="" || namealpha.test(name)==false){  
	  alert("Please Enter Valid User name");  
	  return false;  
	}else if(password.length<6){  
	  alert("Password must be at least 6 characters long.");  
	  return false;  
    }else if(password!=password2){
    	 alert("Password not matched");  
   	  return false; 
    }else if(fnname==null || fnname==""){  
		  alert("Please Enter Valid First name");  
		  return false;  
    }else if(lnname==null || lnname==""){  
		  alert("Please Enter Valid Last name");  
		  return false;  
     }else  if(atposition<1 || dotposition<atposition+2 || dotposition+2>=remail.length){  
		  alert("Please enter a valid e-mail address \n [ @ ]:"+atposition+"\n [ . ]:"+dotposition);  
		  return false;  
    }else if(isNaN(mob) || mob.length<10 || mob.length>10 ){  
		  alert("Please Enter 10 digit mobile number");  
		  return false;  
     }else if(add==null || add==""){  
		  alert("Please Enter Valid Address");  
		  return false;  
     }
}

</script>
</html>
