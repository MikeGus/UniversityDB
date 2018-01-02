#include "route_generator.h"
#include "utils.h"

RouteGenerator::RouteGenerator(): BasicGenerator() {}

unsigned RouteGenerator::generateOuterId(const unsigned minId, const unsigned maxId) const {
	return minId + rand() % (maxId - minId);
}


unsigned RouteGenerator::generatePassengers(const unsigned minPassengers, const unsigned maxPassengers) {
	return minPassengers + rand() % (maxPassengers - minPassengers);
}


void RouteGenerator::generateRoute(const unsigned number, std::ostream& outputFile) {
	for (unsigned i = 0; i < number; ++i) {
		const unsigned id(generateId());
		const unsigned driverId(generateOuterId(1, number));
		const unsigned passengerId(generateOuterId(1, number));
		const unsigned autoId(generateOuterId(1, number));
		const unsigned passengers(generatePassengers(minPsgr, maxPsgr));

		outputFile << id << tab << driverId << tab << passengerId << tab << autoId << tab << passengers << newLine;
	}
}

