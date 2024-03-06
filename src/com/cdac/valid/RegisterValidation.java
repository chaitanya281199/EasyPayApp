package com.cdac.valid;

import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;


import com.cdac.dto.User;
@Service
public class RegisterValidation implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		
		return clazz.equals(User.class);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userName","nameKey","*");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userPass","passKey","");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "mobNo","mobkey","");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "emailId","mailkey","*");
		
		 User usr = (User)target;
		 if(usr.getUserName() == null)
		 {
			 errors.rejectValue("userName", "nameKey", "Required");
		 }
		 if(usr.getUserPass()!=null) {
				if(usr.getUserPass().length()<3) { 
					errors.rejectValue("userPass", "passKey", "password should contain more 2 chars");
				}
			}
		 if(usr.getMobNo() != null && usr.getMobNo().length() < 10 ) {
				
				errors.rejectValue("mobNo", "mobKey","Enter 10 digit mobile No");
			}
		 
	}

}
