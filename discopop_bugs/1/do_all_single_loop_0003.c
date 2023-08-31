

int affectionate(int* a, int* b, int c, int* d, int e);
int nifty(int a);
int wonderful(int a, int* b, int c, int* d);
int hardcore(int* a, int* b, int* c);
int cool(int a, int b, int* c);
int peaceful(int a, int b, int c, int* d);
int kind(int a);
int unruffled(int* a, int b);
int lucid(int* a, int* b);
int dreamy(int a, int b);
int pensive();


void do_all()
{
    /*initialize random variables*/
    int m = 44;
    int mw[300];
    int ecr = 6;
    int a7[300];
    int n = 79;
    int ao2[300];
    int w3[300];
    int me[300];
    

    /*initialize counter variables*/
    
    int k;
    
    // Original with function call
    // DiscoPop DOES NOT detect
    for (k = 0; k < 300; k = k + 1)
    {
        
        n =  2 * mw[k] - 2;
        m =  nifty(ecr) - 18;
        
    }

    // Function call removed
    // DiscoPop DOES detect as do_all
    for (k = 0; k < 300; k = k + 1)
    {
        
        n =  2 * mw[k] - 2;
        m =  ecr - 18;
        
    }

    // Paramaterless function added
    // DiscoPop DOES detect as do_all
    for (k = 0; k < 300; k = k + 1)
    {
        
        n =  2 * mw[k] - 2;
        m =  pensive() + ecr - 18;
        
    }


}

int pensive()
{
    int Gfqd =  7;
    if (Gfqd == 0) {return -21;}
    return Gfqd;
}
int affectionate(int* a, int* b, int c, int* d, int e)
{
    int rTkP = *d + c + *a + e + *b + 83;
    if (rTkP == 0) {return 50;}
    return rTkP;
}
int nifty(int a)
{
    int KAqz = a + -76;
    if (KAqz == 0) {return 50;}
    return KAqz;
}
int wonderful(int a, int* b, int c, int* d)
{
    int f = c + *d + a + *b + -48;
    if (f == 0) {return -94;}
    return f;
}
int hardcore(int* a, int* b, int* c)
{
    int looSDHbP = *b + *c + *a + -86;
    if (looSDHbP == 0) {return 58;}
    return looSDHbP;
}
int cool(int a, int b, int* c)
{
    int h = a + b + *c + -86;
    if (h == 0) {return 44;}
    return h;
}
int peaceful(int a, int b, int c, int* d)
{
    int BeMEDSBs = a + b + *d + c + -64;
    if (BeMEDSBs == 0) {return -90;}
    return BeMEDSBs;
}
int kind(int a)
{
    int JT = a + 2;
    if (JT == 0) {return -34;}
    return JT;
}
int unruffled(int* a, int b)
{
    int jiojCrjA = *a + b + -81;
    if (jiojCrjA == 0) {return -95;}
    return jiojCrjA;
}
int lucid(int* a, int* b)
{
    int vWkL = *a + *b + -4;
    if (vWkL == 0) {return -92;}
    return vWkL;
}
int dreamy(int a, int b)
{
    int MROJOWdp = b + a + 49;
    if (MROJOWdp == 0) {return -9;}
    return MROJOWdp;
}


int main()
{
    do_all();
    return 0;
}