
test1: kwadrat.h szescian.h objetosc.c pole.c wyswietl_boki_K.c wyswietl_boki_S.c mein.c lib1.a temp lib2.so
	gcc -c objetosc.c pole.c wyswietl_boki_K.c wyswietl_boki_S.c
	gcc -Wall -ansi -pedantic objetosc.c pole.c wyswietl_boki_K.c wyswietl_boki_S.c mein.c -o test



#tworzenie biblioteki arhciwalnej
lib1.a: pole.o wyswietl_boki_K.o
	ar rs $@ $^

temp: objetosc.c wyswietl_boki_S.c
	gcc -fPIC -c $^

#tworzenie biblioteki wspoldzielnej
lib2.so: objetosc.o wyswietl_boki_S.o
	gcc -shared -o $@ $^
	
	./test
	
clean:
	rm -f geometry *.o *.a *.so
