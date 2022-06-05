/* mein.c */
#include "kwadrat.h"
#include "szescian.h"
#include <stdio.h>
#include <stdlib.h>
int main()
{
    int a,b,h;
    printf("Podaj dlugosc boku kwadratu: \n");
    scanf("%d",&a);
    printf("Podaj dlugosc boku podstawy bryly: \n");
    scanf("%d",&b);
    printf("Podaj wysokosc bryly: \n");
    scanf("%d",&h);
    wyswietl_boki_K(a);
    wyswietl_boki_S(b,h);
    printf("Pole kwadratu= %d \n", pole(a));
    printf("Objetosc bryly= %d\n", objetosc(b,h));

    return 0;
}
