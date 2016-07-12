package com.company.dao;

import java.util.List;


import com.company.model.Register;


public interface RegisterDAO {
	public void addRegister( Register register );
	public void deleteRegister( int registerId );
	public void updateRegister( Register register );
	public List<Register> getAllRegisters();
	public Register getRegisterById( int registerId );
//	List<Register> getAllRegisters();
}