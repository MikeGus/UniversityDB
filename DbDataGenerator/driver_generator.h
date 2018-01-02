#ifndef DRIVER_GENERATOR_H
#define DRIVER_GENERATOR_H

#include <string>
#include <iostream>
#include "basic_generator.h"

const unsigned maxExperience = 1000;
const unsigned minExperience = 0;


class DriverGenerator : public BasicGenerator {
	public:
		DriverGenerator();
		void generateDrivers(const unsigned number, std::ostream& outputFile);

	private:
		unsigned generateExperience() const;
};

#endif // DRIVER_GENERATOR_H
