function register(){
	
		var isOk=true;
		var name = document.getElementById('userName').value;
		document.write(name);
		var addr = document.getElementById('userAddr').value;
		var city = document.getElementById('userCity').value;
		var mail = document.getElementById('userMail').value;
		var contact = document.getElementById('userContact').value;
		var gender = document.getElementById('userGender').value;
		var country = document.getElementById('userCountry').value;
		var uname = document.getElementById('uName').value;
		var upass = document.getElementById('uPassword').value;

		
		
		if(!isNaN(name)){
			alert("Please enter only charachters");
		}else if( (name=="") || (addr=="") || (city=="") || (mail=="") || (contact=="")||(gender=="")||(country=="")||(uname=="")||(upass=="")  ){
			alert("Please enter all details");
			isOk=false;
		}
		
		if(isOk==true)
		{
            window.location = "NewUserEntry.jsp";
		}
		var checkNaN=/^[a-zA-Z\-]+$/;
		var fname=document.frm.fname.value.match(checkNaN);
		if(fname==null)
			alert("numbers not allowed");
}