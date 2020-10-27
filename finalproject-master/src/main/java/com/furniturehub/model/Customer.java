package com.furniturehub.model;


import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.validation.Valid;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Customer implements Serializable{


    private static final long serialVersionUID = 5140900014886997914L;

    @Id
    @GeneratedValue
    private int cutomerId;

    @NotEmpty (message = "Name must not be blank")
    @Pattern (regexp="^[a-zA-Z]+([ ][a-zA-Z]+)?$",message="name can have only one space and letters only")  
    private String customerName;

    @Email
    @NotEmpty (message = "Email must not be blank")
    private String customerEmail;
    

    @NotEmpty (message = "Mobile number must not be blank")	
    @Size(min=10,max =10)
    @Pattern(regexp="[7-9]{1}[0-9]{9}",message="number can be start with 7/8/9 following 9 digits")
    private String customerPhone;

    @NotEmpty (message = "Username must not be blank")
    private String username;

    @NotEmpty (message = "Password must not be blank")
    private String password;

    private boolean enabled;

    @OneToOne
    @JoinColumn(name = "billingAddressId")
    @Valid
    private BillingAddress billingAddress;

    @OneToOne
    @JoinColumn(name = "shippingAddressId")
    @Valid
    private ShippingAddress shippingAddress;

    @OneToOne
    @JoinColumn(name = "cartId")
    @JsonIgnore
    private Cart cart;

    public int getCutomerId() {
        return cutomerId;
    }

    public void setCutomerId(int cutomerId) {
        this.cutomerId = cutomerId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerEmail() {
        return customerEmail;
    }

    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    public String getCustomerPhone() {
        return customerPhone;
    }

    public void setCustomerPhone(String customerPhone) {
        this.customerPhone = customerPhone;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public BillingAddress getBillingAddress() {
        return billingAddress;
    }

    public void setBillingAddress(BillingAddress billingAddress) {
        this.billingAddress = billingAddress;
    }

    public ShippingAddress getShippingAddress() {
        return shippingAddress;
    }

    public void setShippingAddress(ShippingAddress shippingAddress) {
        this.shippingAddress = shippingAddress;
    }

    public Cart getCart() {
        return cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }
} // The End of Class;
