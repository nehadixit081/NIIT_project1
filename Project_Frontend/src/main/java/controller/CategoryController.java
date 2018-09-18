package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dao.CategoryDao;
import com.model.Category;

@Controller
public class CategoryController {
	
	@Autowired
	private CategoryDao categoryDao;
	
	
	
	@RequestMapping(value="/addCategory",method=RequestMethod.GET)
	public String listCategory(Model model)
	{ 
	List<Category> list=categoryDao.list();
	model.addAttribute("category",new Category());
	model.addAttribute("categorys", list);
	return "addCategory";
	}
	@RequestMapping(value="/newCategory",method=RequestMethod.POST)
	public String addCategory(@ModelAttribute("category")  Category category)
	{


	if(category.getId()==0)
	{

	categoryDao.save(category);
	}
	else
	{
	categoryDao.update(category);
	}

	//  return "redirect:/categoryTable";
	 return "redirect:/addCategory";
	}
	
	@RequestMapping(value="/editCategory/{id}")
	public String editP(@ModelAttribute("id") String id,Model model)
	{
	model.addAttribute("category", categoryDao.get(id));
	return "addCategory";
	}
	
	
	@RequestMapping(value="/deleteCategory/{id}")
	public String deleteCategory(@PathVariable("id") int id,Model model)
	{
	    categoryDao.delete(id);
	  
	    return "redirect:/addCategory";
	
}
}




