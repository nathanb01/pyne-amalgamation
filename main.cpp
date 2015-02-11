#include <stdio.h>
#include "pyne.h"

int main(int argc, char **argv)
{
	std::cout << pyne::nucname::id(std::string("Cs137")) << std::endl;
	return 0;
}
