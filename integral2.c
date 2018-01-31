#include <stdio.h>
#include <omp.h>
#pragma omp parallel

int main(){
	const int num_steps = 10000;
	double step = 1.0 / num_steps;
	
	double sum = 0;
	for ( int i = 0; i < num_steps; ++i) {
		double x = (i + 0.5) * step;
		sum += 4 / (1 + (x * x));
	}
	double area = step * sum;
	
	printf("PI with %d steps is %lf\n", num_steps, area);
	return 0;
}

#export OMP_NUM_THREADS=3