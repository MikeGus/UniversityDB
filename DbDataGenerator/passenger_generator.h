#ifndef PASSENGER_GENERATOR_H
#define PASSENGER_GENERATOR_H

#include <string>
#include <iostream>
#include "basic_generator.h"


class PassengerGenerator: public BasicGenerator {
	public:
		PassengerGenerator();
		void generatePassengers(const unsigned number, std::ostream& outputFile);

	private:
		unsigned generateBuddyId();
};

#endif // PASSENGER_GENERATOR_H
