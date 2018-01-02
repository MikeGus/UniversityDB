#ifndef BASIC_GENERATOR_H
#define BASIC_GENERATOR_H

#include <string>
#include <iostream>

class BasicGenerator {

	protected:
		BasicGenerator();

		std::string generateName() const;
		std::string generateDistrict() const;
		unsigned generateId();

		unsigned id;
};

#endif // BASIC_GENERATOR_H
