#include "CLASSNAME.hpp"
#include <iostream>

CLASSNAME::CLASSNAME(void)
{
	return ;
}

CLASSNAME::CLASSNAME(CLASSNAME const & src)
{
	*this = src;
	return ;
}

CLASSNAME & CLASSNAME::operator = (CLASSNAME const & rhs)
{
	if (this != &rhs)
	{
//		this->member = rhs.getMember();
	}
	return *this;
}

std::ostream & operator << (std::ostream & o, CLASSNAME const & self)
{
	o << "::CLASSNAME::" << std::endl;
	(void)self;
	return o;
}

CLASSNAME::~CLASSNAME(void)
{
	return ;
}

CLASSNAME * CLASSNAME::clone() const
{
	return new CLASSNAME(*this);
}
