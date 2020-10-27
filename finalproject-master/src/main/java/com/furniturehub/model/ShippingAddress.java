package com.furniturehub.model;


import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import org.hibernate.validator.constraints.NotEmpty;


@Entity
public class ShippingAddress implements Serializable{


    private static final long serialVersionUID = 989191150380037359L;


    @Id
    @GeneratedValue
    private int shippingAddressId;
    @NotEmpty (message = "must not be blank")
    private String streetName;
    @NotEmpty (message = "must not be blank")
    private String apartmentNumber;
    @NotEmpty (message = "must not be blank")
    private String city;
    @NotEmpty (message = "must not be blank")
    private String state;
    @NotEmpty (message = "must not be blank")
    private String country;
    @NotEmpty (message = "must not be blank")
    private String zipCode;

    @OneToOne
    private Customer customer;
    public ShippingAddress()
    {
    	System.out.println("shipping address called");
    }
    public int getShippingAddressId() {
        return shippingAddressId;
    }

    public void setShippingAddressId(int shippingAddressId) {
        this.shippingAddressId = shippingAddressId;
    }

    public String getStreetName() {
        return streetName;
    }

    public void setStreetName(String streetName) {
        this.streetName = streetName;
    }

    public String getApartmentNumber() {
        return apartmentNumber;
    }

    public void setApartmentNumber(String apartmentNumber) {
        this.apartmentNumber = apartmentNumber;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    @Override
    public String toString() {
        return "ShippingAddress{" +
                "streetName='" + streetName + '\'' +
                ", apartmentNumber='" + apartmentNumber + '\'' +
                ", city='" + city + '\'' +
                ", state='" + state + '\'' +
                ", country='" + country + '\'' +
                ", zipCode='" + zipCode + '\'' +
                '}';
    }
} // The End of Class;
