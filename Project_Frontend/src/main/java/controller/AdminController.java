package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dao.CategoryDao;
import com.dao.ProductDao;
import com.dao.SupplierDao;

import com.model.Category;
import com.model.Product;
import com.model.Supplier;

@Controller
public class AdminController {
	
	//private static String UPLOADED_FOLDER ="E://IMAGE//";
	
	@Autowired
    private ProductDao productdao;
	@Autowired
	private CategoryDao categorydao;
	@Autowired
	private SupplierDao supplierdao;
	
	
	@RequestMapping("/AdminHome")
	public String admin(){
		return "AdminHome";
	}
	@RequestMapping("/adminHome/manageCategories")
	public ModelAndView categories(){
		ModelAndView mv = new ModelAndView("addCategory");
		mv.addObject("category", new Category());
		mv.addObject("isAdminClickedCategories" ,"true");
		mv.addObject("categorys", categorydao.list());
		return mv;
	}
	
	@RequestMapping("/adminHome/manageProducts")
	public ModelAndView products(){
		ModelAndView mv = new ModelAndView("/addProduct");
		mv.addObject("product",new  Product());
		mv.addObject("isAdminClickedProducts", "true");
		mv.addObject("products", productdao.list());
		mv.addObject("categorys", categorydao.list());
		mv.addObject("suppliers", supplierdao.list());
		return mv;
	}
	
	@RequestMapping("/adminHome/manageSuppliers")
	public ModelAndView suppliers(){
		ModelAndView mv = new ModelAndView("/addSupplier");
		mv.addObject("supplier", new Supplier());
		mv.addObject("isAdminClickedSuppliers", "true");
		mv.addObject("suppliers", supplierdao.list());
		return mv;
		
}
}
	