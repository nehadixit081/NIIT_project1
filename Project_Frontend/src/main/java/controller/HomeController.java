package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.ProductDao;
import com.model.Product;



@Controller
public class HomeController {
	@Autowired
	ProductDao productdao;
	
	
	
	@RequestMapping(value={"/","/header"})
	 public String header(){
		return "header";
	
}
	
	@RequestMapping("/home")
	public String home(Model model){
		List<Product>products=productdao.getAllProducts();
		model.addAttribute("listProduct",products);
		return "home";
	
}
	
	@RequestMapping("aboutus")
	public String aboutus(){
		return "aboutus";
	
}
	
	
	@RequestMapping("MenCollection")
	public String MenCollection(){
		return "MenCollection";
	}

	
	@RequestMapping("WomenCollection")
	public String WomenCollection(){
		return "WomenCollection";
	}

	
	@RequestMapping("footer")
	public String footer(){
		return "footer";
	
}
	
}
