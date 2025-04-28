int main(void) {
static int _x[sizeof(int) == 4 ? 1 : -1] = { 1 };
return 0;
}
