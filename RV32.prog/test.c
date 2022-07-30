int rec_fib(int lim);

void _start() {
	int c = rec_fib(10);
}

int rec_fib(int lim) {
    if (lim == 0 || lim == 1) {
        return 1;
    }
	return rec_fib(lim - 1) + rec_fib(lim - 2);
}