function validate(){
	var username = document.getElementById('text1').value;
	var password = document.getElementById('text2').value;
	if( (username=="admin") && (password=="123") ){

		alert("You registered Successfully");

	}else if( (username=="") || (password==""))
	{
		alert("Please enter all the details");

	}
	else if( (username=="admin") || (password==""))
	{
		alert("Please enter all the details");
	}
	else if( (username=="") || (password=="123"))
	{
		alert("Please enter all the details");
	}
}	