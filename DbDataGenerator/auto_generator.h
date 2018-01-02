#ifndef AUTO_GENERATOR_H
#define AUTO_GENERATOR_H

#include <vector>
#include <string>
#include <iostream>
#include "basic_generator.h"

const float minRating = 1.0;
const float maxRating = 5.0;


const std::vector<std::string> models = {"BMW", "Audi", "Mercedes", "Lada", "Porsche", "Land Cruiser", "Jeep",
										"Lexus", "Volkswagen"};


class AutoGenerator: public BasicGenerator {
	public:
		AutoGenerator();
		void generateAutos(const unsigned number, std::ostream& outputFile);

	private:
		float generateRating() const;
		std::string generateModel() const;

};

#endif // AUTO_GENERATOR_H
