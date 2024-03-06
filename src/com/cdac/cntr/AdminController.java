package com.cdac.cntr;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cdac.dao.AdminOfferDao;
import com.cdac.dto.AdminAddOffers;
import com.cdac.dto.AdminLogin;
import com.cdac.service.AdminOffersService;
@Controller
public class AdminController {
 
	@Autowired
	private AdminOffersService adminOffersService;
	
	@RequestMapping(value = "/Admin_login_form.htm",method = RequestMethod.GET)
	public String prepLogForm() {
		return "Admin_Login_Form";
	}
	
	@RequestMapping(value = "/Admin_login.htm",method = RequestMethod.POST)
		public String AdminLogin(@ModelAttribute AdminLogin adminUser ,Model model,HttpSession session) {
		
		if(adminUser.getAdminName().equals("Anjali") && adminUser.getAdmpassword().equals("1234") )
		{
			session.setAttribute("admin_name", "Anjali");
			return "AdminHome";
		}
		else {
		
		return "Admin_Login_Form";
		
		}
		
	}
	 
	
	@RequestMapping(value = "/Prep_AddOffer_form",method = RequestMethod.GET)
	public String prepAddofferForm(ModelMap map)
	{
		
			map.put("offers", new AdminAddOffers());
			return "add_offer";
		
	}
	
	
	
	@RequestMapping(value = "/offer_add.htm",method = RequestMethod.POST)
	public String addOffersInDb(AdminAddOffers offers)
	{
		adminOffersService.adddAdminOffers(offers);
	
	   return "AdminHome";
	}
	
	//@Autowired
	//private AdminOffersService adminOffersService;
	@RequestMapping(value="/view_offer_admin.htm", method=RequestMethod.GET)
	public String showOffers(ModelMap map)
	{
		List<AdminAddOffers> li=adminOffersService.seeAllOffers();
		map.put("offerlist",li);
		return "view_Amin_offers";
	}
	
	@RequestMapping(value = "/offer_delete.htm",method = RequestMethod.GET)
    public String deleteAdminOffer(@RequestParam int offerId,ModelMap map)
    {
		
    	adminOffersService.removeAdmOffers(offerId);
    	List<AdminAddOffers> li=adminOffersService.seeAllOffers();
		map.put("offerlist",li);
		return "view_Amin_offers";
    }
	@RequestMapping(value = "/offer_update.htm",method =RequestMethod.GET)
	public String offerUpdateForm(@RequestParam int offerId,ModelMap map)
	{
		
		//System.out.println(offer);
		AdminAddOffers ofrs= adminOffersService.findOffer(offerId);
		map.put("offer",ofrs);
		return "update_offer_form";
	}
	@RequestMapping(value = "/Adm_offer_update.htm",method =RequestMethod.POST)
	public String offerUpdate(AdminAddOffers offer,ModelMap map)
	{
	    System.out.println(offer.getOfferId()+ " +++");
		adminOffersService.modifyOffer(offer);
		List<AdminAddOffers> li=adminOffersService.seeAllOffers();
		map.put("offerlist",li);
		System.out.println(li);
		return "view_Amin_offers";
	}
	
}
