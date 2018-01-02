#include <iostream>
#include <fstream>

#include "driver_generator.h"
#include "passenger_generator.h"
#include "auto_generator.h"
#include "route_generator.h"

int main() {
	const unsigned number = 1000;

	DriverGenerator driverGenerator;
	PassengerGenerator passengerGenerator;
	AutoGenerator autoGenerator;
	RouteGenerator routeGenerator;

	std::ofstream drivers("data/drivers.dat");
	std::ofstream passengers("data/passengers.dat");
	std::ofstream autos("data/autos.dat");
	std::ofstream routes("data/routes.dat");

	driverGenerator.generateDrivers(number, drivers);
	passengerGenerator.generatePassengers(number, passengers);
	autoGenerator.generateAutos(number, autos);
	routeGenerator.generateRoute(number, routes);

	return 0;
}
