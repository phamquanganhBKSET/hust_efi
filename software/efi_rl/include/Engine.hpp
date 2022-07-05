#ifndef ENGINE_H
#define ENGINE_H

#include <iostream>
#include "GlobalDefines.hpp"

using namespace std;

class Engine {

private:
	bool status;

	float speed;

	bool checkEngineLight;

	float speedMax;

public:
	Engine();

	bool getStatus();

	void setStatus(bool status);

	float getSpeed();

	void setSpeed(float speed);

	bool getCheckEngineLight();

	void setCheckEngineLight(bool checkEngineLight);

	float getSpeedMax();

	void startEngine();

	void stopEngine();

	void accelaration(float accel);

	void deceleration(float decel);

	void display();
};

#endif