#include "passenger_generator.h"
#include "utils.h"

PassengerGenerator::PassengerGenerator(): BasicGenerator() {}

void PassengerGenerator::generatePassengers(const unsigned number, std::ostream &outputFile) {
	for (unsigned i = 0; i < number; ++i) {
		const unsigned id(generateId());
		const std::string name(generateName());
		const std::string district(generateDistrict());


		outputFile << id << tab << name << tab << district << tab;

		if (i == 0 || rand() % 2 == 0) {
			outputFile << " ";
		}
		else {
			outputFile << generateBuddyId();
		}

		outputFile << newLine;
	}
}


unsigned PassengerGenerator::generateBuddyId() {
	return 1 + rand() % (id - 1);
}
