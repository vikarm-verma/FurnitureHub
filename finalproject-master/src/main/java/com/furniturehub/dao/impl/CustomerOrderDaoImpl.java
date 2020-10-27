package com.furniturehub.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;

import com.furniturehub.dao.CustomerOrderDao;
import com.furniturehub.model.CustomerOrder;

@Repository
@Transactional
public class CustomerOrderDaoImpl implements CustomerOrderDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void addCustomerOrder(CustomerOrder customerOrder){
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(customerOrder);
        session.flush();
    }
    
    public String validate(BindingResult result)
    {
    	  if(result.hasErrors()){
             return "collectCustomerInfo";
          }
		return "collectShippingDetail";
    }

} // The End of Class;
