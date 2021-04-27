class CLASSNAME
{
	public:
		CLASSNAME(void);
		CLASSNAME(CLASSNAME const & src);
		CLASSNAME &	operator = (CLASSNAME const & rhs);
		~CLASSNAME(void);
};

std::ostream &	operator << (std::ostream & o, CLASSNAME const & i);
