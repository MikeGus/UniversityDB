#ifndef ROUTE_GENERATOR_H
#define ROUTE_GENERATOR_H

#include <string>
#include <iostream>
#include "basic_generator.h"

const unsigned minPsgr = 1;
const unsigned maxPsgr = 4;

class RouteGenerator: public BasicGenerator {
	public:
		RouteGenerator();
		void generateRoute(const unsigned number, std::ostream& outputFile);

	private:
		unsigned generateOuterId(const unsigned minId, const unsigned maxId) const;
		unsigned generatePassengers(const unsigned minPassengers, const unsigned maxPassengers);
};

#endif // ROUTE_GENERATOR_H
