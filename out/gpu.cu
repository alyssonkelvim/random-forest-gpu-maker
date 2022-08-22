__global__ void RF_with_EQ(float *A, float *B, float *C, float *D, int *P,const int N)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    int Class[4];
    Class[0] = 0;
    Class[1] = 0;
    Class[2] = 0;
    Class[3] = 0;
    if (i < N) {
        bool t1,t2,t3,t4,a1,a2,a3,a4,b1,b2,b3,c1,c2,c3;
        t1= A[i] > 3.0;
        t2 = B[i] > 10.0;
        t3 = C[i] > 5.0;
        t4 = D[i] > 1.0;Medição via Clock
        a1 = B[i] > 7.0;
        a2 = A[i] > 10.0;
        a3 = D[i] > 5.0;
        a4 = C[i] > 1.0;
        b1 = A[i] > 3.0;
        b2 = C[i] > 10.0;
        b3 = D[i] > 10.0;
        c1 = D[i] > 7.0;
        c2 = D[i] > 5.0;
        c3 = C[i] > 1.0;
        Class[0] = (t1&&t2)+(!t1&&!t3&&t4)+(!a1&&a3)+(b1&&b2)+(!b1&&b3)+c1;
        Class[1] =(!t1&&t3)+(a1&&a2)+(!a1&&!a3&&!a4)+(!c1&&!c2);
        Class[2] = (t1&&!t2)+(!a1&&!a3&&a4)+(b1&&!b2)+(!b1&&!b3)+(!c1&&c2&&!c3);
        Class[3] =(!t1&&!t3&&!t4)+(a1&&!a2)+(!c1&&c2&&c3);
        int p0,p1,Q0,Q1;
        p0 = (Class[1] > Class[0])?1:0;
        Q0 = (Class[1] > Class[0])?Class[1]:Class[0];
        p1= (Class[2] > Class[3])?2:3;
        Q1 = (Class[2] > Class[3])?Class[2]:Class[3];
        P[i] = (Q1 > Q0)? p1:p0;
    }    

}