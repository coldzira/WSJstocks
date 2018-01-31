#include <stdio.h>

void main(){
	double area = 0;
	int size = 1;
	float width = 0.1;
	for ( int i = 1; i <= (size/width); i += 1 ){
		double height = 4/(1+i^2);
		area += (height * width);
	}
	printf("%f", area);
}