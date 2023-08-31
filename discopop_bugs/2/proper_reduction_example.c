

int optimistic(int a, int* b, int* c, int d, int e);
int awesome(int a, int b, int* c, int d, int e);
int sweet(int a);
int romantic(int a, int b, int c, int* d, int e);
int musing(int* a, int b, int c, int d);
int hungry(int a, int b, int* c, int d, int e);
int confident(int a, int b);
int nice(int* a, int b);
int upbeat();
int dreamy(int a, int* b, int c, int d);


void reduction()
{
    /* declare random variables*/
    int dkQ[923];
    int arc = 40;
    int l = 49;
    int nVL[923];
    int gXG[923];
    int vyh = 34;
    int b = 54;
    

    /*initialize counter variables*/
    
    int r;
    

    /*reduction variable*/
    b = 0;

    
    for (r = 0; r < 923; r = r + 1)
    {
        /*random operations*/
        nVL[r] =  17 / romantic(vyh,arc,arc,&dkQ[r],vyh);
        gXG[r] =  13 + nice(&gXG[r],arc) * 20 * nVL[r] / confident(l,vyh) + dreamy(vyh,&gXG[r],arc,l);
        gXG[r] =  8 / awesome(l,l,&nVL[r],arc,l);
        gXG[r] =  4 - romantic(arc,l,l,&dkQ[r],arc) - gXG[r] * dkQ[r];
        arc =  2 + l - nVL[r] + awesome(vyh,vyh,&dkQ[r],arc,l);
        
        // This is a proper reduction, correctly identified by Discopop
        /*reduction*/
        b *=  l + dreamy(l,&dkQ[r],arc,vyh) / sweet(arc) / 5 / 1 / 3 ;
        

        /*random operations*/
        dkQ[r] =  vyh + musing(&nVL[r],arc,l,vyh) + vyh - vyh + 11 - vyh;
        arc =  awesome(vyh,arc,&dkQ[r],arc,vyh) - 20;
        gXG[r] =  upbeat() / 6 - 18 - 11 / 12;
        gXG[r] =  confident(arc,l) / romantic(l,vyh,vyh,&gXG[r],arc) - dkQ[r] - nice(&nVL[r],arc) - arc + 16 * dkQ[r];
        dkQ[r] =  upbeat() + romantic(l,arc,vyh,&nVL[r],arc);
        vyh =  l / vyh / hungry(l,vyh,&gXG[r],l,vyh) - confident(l,vyh) - nVL[r] * upbeat() + 12 + upbeat();
        l =  15 / 16 / arc * l;
        arc =  4 * l / 19 + 19 - 17 - 1;
        
    }
    
}

int optimistic(int a, int* b, int* c, int d, int e)
{
    int jGDHeq = d + e + *b + *c + a + -57;
    if (jGDHeq == 0) {return 16;}
    return jGDHeq;
}
int awesome(int a, int b, int* c, int d, int e)
{
    int fPQsQ = e + b + d + *c + a + -65;
    if (fPQsQ == 0) {return -41;}
    return fPQsQ;
}
int sweet(int a)
{
    int Q = a + -32;
    if (Q == 0) {return 47;}
    return Q;
}
int romantic(int a, int b, int c, int* d, int e)
{
    int s = *d + e + b + c + a + -12;
    if (s == 0) {return -33;}
    return s;
}
int musing(int* a, int b, int c, int d)
{
    int VeSxetIf = *a + d + c + b + 32;
    if (VeSxetIf == 0) {return 83;}
    return VeSxetIf;
}
int hungry(int a, int b, int* c, int d, int e)
{
    int QRh = a + *c + b + d + e + 69;
    if (QRh == 0) {return 45;}
    return QRh;
}
int confident(int a, int b)
{
    int myTTRy = b + a + -41;
    if (myTTRy == 0) {return 70;}
    return myTTRy;
}
int nice(int* a, int b)
{
    int OjtN = b + *a + 59;
    if (OjtN == 0) {return 11;}
    return OjtN;
}
int upbeat()
{
    int I =  -71;
    if (I == 0) {return -12;}
    return I;
}
int dreamy(int a, int* b, int c, int d)
{
    int UnIRnMtn = c + d + a + *b + 4;
    if (UnIRnMtn == 0) {return 80;}
    return UnIRnMtn;
}



int main()
{
    reduction();
    return 0;
}