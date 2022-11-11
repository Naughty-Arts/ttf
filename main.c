#include <stdio.h>

int main(int argc, char ** argv)
{
	printf("----------------------- TTF --------------------------\n\n");

	FILE* ttf_file = fopen("m5x7.ttf", "rb");

	fclose(ttf_file);

	return 0;
}