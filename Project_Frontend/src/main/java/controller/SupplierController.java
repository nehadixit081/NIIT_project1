package controller;



import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.dao.SupplierDao;
import com.model.Supplier;

@Controller
public class SupplierController{
	@Autowired
	private SupplierDao supplierDao;
	
	@RequestMapping(value="/addSupplier",method=RequestMethod.GET)
	public String listSupplier(Model model)
	{ 
	List<Supplier> list=supplierDao.list();
	model.addAttribute("supplier",new Supplier());
	model.addAttribute("suppliers", list);
	return "addSupplier";
	}
	@RequestMapping(value="/newSupplier",method=RequestMethod.POST)
	public String addSupplier(@ModelAttribute("supplier")  Supplier supplier)
	{
		if(supplier.getId()==0)

	{

	supplierDao.save(supplier);
	}
	else
	{
	supplierDao.update(supplier);
	}

	//  return "redirect:/supplierTable";
	 return "redirect:/addSupplier";
	}

	@RequestMapping(value="/editSupplier/{id}")
	public String editP(@ModelAttribute("id") int id,Model model)
	{
	model.addAttribute("supplier", supplierDao.get(id));
	return "addSupplier";
	}
	
	@RequestMapping(value="/deleteSupplier/{id}")
	public String deleteSupplier(@PathVariable("id") int id,Model model)
	{
	    supplierDao.delete(id);
	  
	    return "redirect:/addSupplier";
	}
}