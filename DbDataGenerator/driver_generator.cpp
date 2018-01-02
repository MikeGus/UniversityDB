#include "driver_generator.h"
#include "utils.h"
#include <ctime>


DriverGenerator::DriverGenerator(): BasicGenerator() {}

unsigned DriverGenerator::generateExperience() const {
	return rand() % (maxExperience - minExperience) + minExperience;
}

void DriverGenerator::generateDrivers(const unsigned number, std::ostream& outputFile) {
	for (unsigned i = 0; i < number; ++i) {
		const unsigned id(generateId());
		const std::string name(generateName());
		const unsigned experience(generateExperience());
		const std::string district(generateDistrict());;

		outputFile << id << tab << name << tab << experience << tab << district << newLine;
	}
}
