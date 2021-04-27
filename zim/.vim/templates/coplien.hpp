#ifndef CLASSNAME_HPP
# define CLASSNAME_HPP

# include <iostream>

class CLASSNAME
{
	public:
		CLASSNAME(void);
		CLASSNAME(CLASSNAME const & src);
		CLASSNAME &	operator = (CLASSNAME const & rhs);
		~CLASSNAME(void);
};

std::ostream &	operator << (std::ostream & o, CLASSNAME const & i);

#endif
