#include "auto_generator.h"
#include "utils.h"

AutoGenerator::AutoGenerator(): BasicGenerator() {}

std::string AutoGenerator::generateModel() const {
	const unsigned modelId = rand() % models.size();
	return models[modelId];
}

float AutoGenerator::generateRating() const {
	return (minRating * 100 + rand() % (int)((maxRating - minRating) * 100)) / 100;
}

void AutoGenerator::generateAutos(const unsigned number, std::ostream& outputFile) {
	for (unsigned i = 0; i < number; ++i) {
		const unsigned id(generateId());
		const std::string model(generateModel());
		const float rating(generateRating());
		const std::string district(generateDistrict());;

		outputFile << id << tab << model << tab << rating << tab << district << newLine;

	}
}

