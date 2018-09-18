package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.CustomerDao;
import com.model.Customer;
import com.model.User;

@Controller
public class CustomerController {

	@Autowired
private CustomerDao customerdao;
	
	@RequestMapping("/all/registrationform")
	public String getRegistrationForm(Model model){
		//to return registration form
	 model.addAttribute("customer",new Customer());
		return "registrationform";
	}
	
	@RequestMapping("/all/savecustomer")
	public String registerCustomer(@Value(value = "") @ModelAttribute Customer customer,BindingResult result,Model model)
	{
		
		if(result.hasErrors())
		{
			return "registrationform";
		}
		User user=customerdao.validateUsername(customer.getUser().getUsername());
		if(user!=null){ //duplicate username
			model.addAttribute(
					"duplicateUsername","Username already exists.. So Please enter different username");
			return "registrationform";
		}
		
		Customer duplicateCustomer=customerdao.validateEmail(customer.getEmail());
		if(duplicateCustomer!=null){
			model.addAttribute("duplicate Email","Email  address already exists");
			return "registrationform";
		}
		customerdao.registerCustomer(customer);
		return "home";
	}
}
