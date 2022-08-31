validation_function()
{
	var firstname = document.forms["registration_form"]["fname"];
	var lastname = document.forms["registration_form"]["lname"];
	var email = document.forms["registration_form"]["email"];
	var phone = document.forms["registration_form"]["phone"];
	if(!firstname.checkValidity())
	{
		firstname.focus();
		return false;
	
	}

	if(!lastname.checkValidity())
	{
		lastname.focus();
		return false;
	}
	if(!email.checkValidity())
	{
		email.focus();
		return false;
	}
	if(!phone.checkValidity())
	{
		phone.focus();
		return false;
	}
	return true;
}