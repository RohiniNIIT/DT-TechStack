package com.niit.ShoppingCart.DB.Dao;

import java.util.List;

//import com.niit.ShoppingCart.DB.*;
import com.niit.ShoppingCart.DB.Model.Register;


public interface RegisterDao {
	public void addRegister( Register register );
	public void deleteRegister( int registerId );
	public void updateRegister( Register register );
	public List<Register> getAllRegisters();
	public Register getRegisterById( int registerId );
//	List<Register> getAllRegisters();
}