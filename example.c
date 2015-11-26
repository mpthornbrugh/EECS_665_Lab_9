int foo (int x, int y) {
	return x + y;
}

int main () {

	int x = 12;
	int y = 1;

	int z = x << y;
	int a = x >> y;

	return foo(x,y);
}
