package controller;




import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.Cart;
import com.model.CartItem;
import com.model.Customer;
import com.model.Product;
import com.model.User;
import com.dao.CartItemDao;
import com.dao.CustomerDao;
import com.dao.ProductDao;


@Controller
public class CartItemController {
	@Autowired 
private ProductDao productDao;
	@Autowired
private CustomerDao customerDao;
	@Autowired
private CartItemDao cartItemDao;
	
  @RequestMapping("/cart/addtocart/{id}/{units}")
  public String addCartItem (@PathVariable int id,@RequestParam int units, Model model){
	Product product =productDao.getProductBYID(id);
	
	
	User user=(User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	String Username=user.getUsername();
	Customer customer=customerDao.getCustomerByUsername(Username);
	Cart cart=customer.getCart();
	List<CartItem> cartItems=cart.getCartItems();
	 System.out.println(cart.getCartItems().size());
	//check if purchased product is already existing in  the cartitem table
	for(CartItem cartItem:cartItems){
		//product id in table (productid in database) == id(input)
		System.out.println(cartItem.getProduct().getId());
		System.out.println(id);
		
		if(cartItem.getProduct().getId()==id){
			cartItem.setQuantity(units);
			cartItem.setTotalPrice(cartItem.getProduct().getPrice() * units);
			cartItemDao.addCartItem(cartItem); //update cartitem units &total price
			return "redirect:/cart/getcart";
		}
	}
	CartItem cartItem=new CartItem();
	cartItem.setQuantity(units);
	cartItem.setTotalPrice(product.getPrice()*units);
	cartItem.setProduct(product);//product_id column in cartItem table
	cartItem.setCart(cart);//cart_id colunm in  cartitem table
	cartItemDao.addCartItem(cartItem);//insert
	
	return "redirect:/cart/getcart";

	
	
}
   @RequestMapping("cart/getcart")
   public String  getCart(Model model){
	   User user=(User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	   String username=user.getUsername();
	   Customer customer=customerDao.getCustomerByUsername(username);
	   Cart cart=customer.getCart();
	   model.addAttribute("cart",cart);
	  return "cart";
	   
   }
   
  @RequestMapping("/cart/removecartitem/{cartItemId}")
  public String removeCartItem(@PathVariable int cartItemId){
	  cartItemDao.removeCartItem(cartItemId);
	  return"redirect:/cart/getcart";
  }
  
  @RequestMapping("/cart/clearcart/{cartId}")
  public String removeAllCartItems(@PathVariable("cartId") int cartId){
	  cartItemDao.removeAllCartItems(cartId);
	return "/redirect:/cart/getcart";
	  
  }
}
