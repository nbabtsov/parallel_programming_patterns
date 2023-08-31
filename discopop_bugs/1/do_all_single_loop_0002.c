

int jovial(int a, int b);
int sharp(int* a, int* b, int* c);
int vigilant(int a, int* b, int* c);
int intelligent();
int suspicious(int* a, int b, int* c, int* d);
int lucid(int* a, int* b, int c, int d, int e);
int eloquent(int a, int b, int c, int* d, int* e);
int kind(int* a, int b, int c, int* d);
int peaceful(int a, int* b);
int youthful(int* a);


void do_all()
{
    /*initialize random variables*/
    int g[929];
    int qCG = 83;
    int y[929];
    int p = 12;
    

    /*initialize counter variables*/
    
    int c;
    

    // Original loop
    // DiscoPop DOES NOT detect
    for (c = 0; c < 929; c = c + 1)
    {

        g[c] =  sharp(&y[c],&y[c],&y[c]);
        
    }

    // Function unrolled
    // DiscoPop DOES detect as do_all
    for (c = 0; c < 929; c = c + 1)
    {
        int znTTGvL2 = y[c] + y[c] + y[c] + -71;
        if (znTTGvL2 == 0) {znTTGvL2 = 60;}
        g[c] =  znTTGvL2;
        
    }
    
}

int jovial(int a, int b)
{
    int GYr = b + a + -50;
    if (GYr == 0) {return 98;}
    return GYr;
}
int sharp(int* a, int* b, int* c)
{
    int znTTGvL = *b + *a + *c + -71;
    if (znTTGvL == 0) {return 60;}
    return znTTGvL;
}
int vigilant(int a, int* b, int* c)
{
    int hHIrMTO = *c + *b + a + -69;
    if (hHIrMTO == 0) {return -90;}
    return hHIrMTO;
}
int intelligent()
{
    int lTDXqE =  -15;
    if (lTDXqE == 0) {return -38;}
    return lTDXqE;
}
int suspicious(int* a, int b, int* c, int* d)
{
    int tJMhf = b + *d + *c + *a + 54;
    if (tJMhf == 0) {return 8;}
    return tJMhf;
}
int lucid(int* a, int* b, int c, int d, int e)
{
    int NAbu = e + c + *b + d + *a + 97;
    if (NAbu == 0) {return -62;}
    return NAbu;
}
int eloquent(int a, int b, int c, int* d, int* e)
{
    int Vlrz = *d + c + a + b + *e + -9;
    if (Vlrz == 0) {return 74;}
    return Vlrz;
}
int kind(int* a, int b, int c, int* d)
{
    int ykXQz = c + *d + *a + b + -37;
    if (ykXQz == 0) {return 52;}
    return ykXQz;
}
int peaceful(int a, int* b)
{
    int KCrOOFKR = *b + a + -83;
    if (KCrOOFKR == 0) {return -89;}
    return KCrOOFKR;
}
int youthful(int* a)
{
    int FSY = *a + -11;
    if (FSY == 0) {return 81;}
    return FSY;
}


int main()
{
    do_all();
    return 0;
}