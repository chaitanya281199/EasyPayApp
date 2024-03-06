package com.cdac.cntr;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cdac.dto.User;
import com.cdac.service.UserService;
import com.cdac.valid.RegisterValidation;
import com.cdac.valid.UserValid;

@Controller
public class UserController {
	@Autowired
	private MailSender mailSender;
  @Autowired
  private UserService userService;
  @Autowired
  private UserValid userValid;
  @Autowired
  private RegisterValidation registervalid;
  @RequestMapping(value="/prep_reg_form.htm",method = RequestMethod.GET)
  public String prepRegform(ModelMap map)
  {
     map.put("user",new User());
	  return "reg_form";
  }
 
  @RequestMapping(value="/reg.htm",method=RequestMethod.POST)
  public String register(User user,BindingResult result,ModelMap map)
  {
	registervalid.validate(user, result);
	if(result.hasErrors())
	{
		return "reg_form";
	}
	else {
	 userService.addUser(user); 
	 System.out.println(user);
	 return "index";
	}
  }
  @RequestMapping(value="/prep_log_form.htm",method = RequestMethod.GET)
  public String prepLogForm(ModelMap map)
  {
	  map.put("user",new User());
	  return "login_form";
  }
  @RequestMapping(value = "/login.htm" ,method=RequestMethod.POST)
  public String login(User user,BindingResult result,ModelMap map,HttpSession session)
  {
	  userValid.validate(user, result);
	  if(result.hasErrors())
	  {
		  return "login_form";
	  }
	 
	  boolean b=userService.findUser(user);
	  
	  if(b)
	  {
		  session.setAttribute("user", user);
		  //session.setMaxInactiveInterval(100);
		  return "home";
	  }
	  else {
		  map.put("user", new User());
		  return "login_form";
	  }
  }
  @RequestMapping(value="/logout.htm" ,method=RequestMethod.GET)
  public String logoutpage()
  {
	  return "logout";
  }
  
  @RequestMapping(value = "/forgot_password.htm",method = RequestMethod.POST)
  public String forgotPassword(@RequestParam String userName, ModelMap map) {
	  String pass = userService.forgotPassword(userName);
	  String msg = "you are not registered";
	  if(pass!=null) {
		  SimpleMailMessage message = new SimpleMailMessage();
		  message.setFrom("amitrathor12121gmail.com"); 
		  message.setTo(userName);  
	        message.setSubject("Your password");  
	        message.setText(pass); 
	      //sending message   
	        mailSender.send(message);
			msg = "check the mail for password";
		}
		map.put("msg", msg);
	  
	return "info";
	  
  }
}
