CLASSNAME::CLASSNAME(void)
{
	return ;
}

CLASSNAME::CLASSNAME(CLASSNAME const & src)
{
	*this = std;
	return ;
}

CLASSNAME::~CLASSNAME(void)
{
	return ;
}

CLASSNAME::CLASSNAME &	operator = (CLASSNAME const & rhs)
{
	if (this != &rhs)
	{
//		this->member = rhs.getMember();
	}
	return *this;
}

std::ostream &	operator << (std::ostream & o, CLASSNAME const & i)
{
	o << "::CLASSNAME::" << std::endl;
	return o;
}