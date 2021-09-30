function chance(percent) {
	// returns true of false depending on RNG
	// chance(0.7); (returns true 70% of the time)

	return percent > random(1);
}