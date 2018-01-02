#include "basic_generator.h"
#include "utils.h"
#include <ctime>


BasicGenerator::BasicGenerator(): id(1) {
	srand(time(NULL));
}

unsigned BasicGenerator::generateId() {
	return id++;
}

std::string BasicGenerator::generateName() const {
	const unsigned nameId = rand() % names.size();
	const unsigned surnameId = rand() % surnames.size();

	const std::string name(names[nameId]);
	const std::string surname(surnames[surnameId]);

	return name + " " + surname;
}

std::string BasicGenerator::generateDistrict() const {
	const unsigned districtId = rand() % districts.size();
	return districts[districtId];
}
