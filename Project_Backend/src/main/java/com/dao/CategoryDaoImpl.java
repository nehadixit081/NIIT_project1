package com.dao;

import java.util.List;




import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Category;


@Repository("categoryDao")
public class CategoryDaoImpl implements CategoryDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	public CategoryDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
}

	@Transactional
	public boolean save(Category category) {
		try {
			sessionFactory.getCurrentSession().save(category);
			return true;
		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
}
			
}	
	@Transactional
	public boolean update(Category category) {
		try {
			sessionFactory.getCurrentSession().update(category);
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
}
	}
	
	
	@Transactional
	public List<Category> list() {
		String hql = "from Category";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
        return query.list();
	}
	
	
@Transactional
public boolean delete(int id) {
	try {
		 Session session =sessionFactory.getCurrentSession();
         Category p = (Category) session.get(Category.class, new Integer(id));
         session.delete(p);
			return true;
	} catch (HibernateException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return false;
}

}

@Transactional
public Category getCategoryByName(String name) {
return  (Category)sessionFactory.getCurrentSession().createQuery("from Category where categoryName ='"+name+"'").uniqueResult();
}
@Transactional
public Category get(String id) {
	// select*from category where id ="101"
			String hql = "from Category where id = " + "'" + id + "'";
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
			List<Category> list = query.list();
			if (list == null) {
				return null;
			} else {
				return list.get(0);
		}
}

}

