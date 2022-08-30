__global__ void RF_with_EQ(float * F0, float * F1, float * F2, float * F3, float * F4, float * F5, float * F6, float * F7, float * F8, float * F9, float * F10, float * F11, float * F12, float * F13, float * F14, float * F15, float * F16, float * F17, float * F18, float * F19, float * F20, float * F21, float * F22, float * F23, float * F24, float * F25, float * F26, float * F27, float * F28, float * F29, float * F30, float * F31, float * F32, float * F33, float * F34, float * F35, float * F36, float * F37, float * F38, float * F39, float * F40, float * F41, float * F42, float * F43, float * F44, float * F45, float * F46, float * F47, float * F48, float * F49, float * F50, float * F51, float * F52, float * F53, int *P, const int N)
{	int i = blockIdx.x * blockDim.x + threadIdx.x;
	int Class[2]; 
	Class[0] = 0;
	Class[1] = 0;

	if (i < N) {
		bool c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31,c32,c33,c34,c35,c36,c37,c38,c39,c40,c41,c42,c43,c44,c45,c46,c47,c48,c49,c50,c51,c52,c53;

		c20 = F8[i] <= 0.131;
		c28 = F45[i] <= -60.662;
		c3 = F13[i] <= -20.773;
		c43 = F2[i] <= 0.102;
		c58 = F1[i] <= 30.281;
		c30 = F43[i] <= -0.015;
		c27 = F4[i] <= 5.743;
		c9 = F30[i] <= 45.3;
		c69 = F19[i] <= 0.144;
		c36 = F38[i] <= 0.075;
		c18 = F40[i] <= -1.336;
		c39 = F35[i] <= 30.594;
		c62 = F6[i] <= 7.42;
		c6 = F39[i] <= 9.594;
		c49 = F13[i] <= -18.793;
		c19 = F46[i] <= -37.184;
		c0 = F29[i] <= -48.777;
		c15 = F23[i] <= 9.44;
		c26 = F3[i] <= 7.632;
		c5 = F0[i] <= 37.66;
		c60 = F0[i] <= 37.65;
		c41 = F0[i] <= 37.075;
		c55 = F23[i] <= 9.479;
		c38 = F7[i] <= 6.158;
		c57 = F5[i] <= -0.191;
		c16 = F35[i] <= 30.781;
		c54 = F0[i] <= 27.975;
		c23 = F22[i] <= 0.098;
		c33 = F3[i] <= 7.673;
		c68 = F0[i] <= 37.705;
		c17 = F28[i] <= 2.456;
		c25 = F13[i] <= -16.157;
		c21 = F0[i] <= 37.625;
		c10 = F29[i] <= -48.624;
		c46 = F45[i] <= -59.158;
		c1 = F2[i] <= 0.089;
		c45 = F0[i] <= 37.145;
		c24 = F0[i] <= 36.345;
		c32 = F11[i] <= 7.422;
		c67 = F23[i] <= 9.801;
		c34 = F2[i] <= 2.29;
		c29 = F47[i] <= -58.866;
		c61 = F18[i] <= 32.219;
		c65 = F19[i] <= 0.484;
		c37 = F38[i] <= 0.095;
		c4 = F38[i] <= 0.094;
		c51 = F41[i] <= 0.243;
		c31 = F28[i] <= 0.974;
		c11 = F2[i] <= 1.087;
		c66 = F40[i] <= -1.752;
		c8 = F30[i] <= 45.19;
		c64 = F11[i] <= 6.895;
		c44 = F6[i] <= 7.406;
		c56 = F12[i] <= -68.786;
		c53 = F0[i] <= 37.655;
		c42 = F35[i] <= 30.719;
		c59 = F4[i] <= 4.936;
		c35 = F13[i] <= -20.262;
		c40 = F23[i] <= 9.539;
		c7 = F45[i] <= -58.259;
		c50 = F12[i] <= -67.203;
		c13 = F20[i] <= 9.458;
		c22 = F25[i] <= 0.003;
		c52 = F0[i] <= 38.205;
		c2 = F13[i] <= -18.409;
		c12 = F20[i] <= 9.495;
		c63 = F12[i] <= -68.198;
		c48 = F6[i] <= 7.778;
		c47 = F47[i] <= -55.196;
		c14 = F45[i] <= -59.612;
		Class[0] = (c0 && c3 && c4 && c2 && c1 && c5) + (c0 && c3 && c4 && c2 && c1 && c6) + (c1 && c0 && c7 && c2) + (c0 && c8 && c9) + (c11 && c0 && c10 && c8 && c9) + (c13 && c15 && c14 && c12) + (c13 && c16 && c12) + (c19 && c20 && c21 && c18 && c12 && c17) + (c19 && c20 && c22 && c18 && c12 && c23 && c24 && c17) + (c19 && c20 && c22 && c18 && c12 && c23 && c17 && c25) + (c19 && c20 && c22 && c18 && c12 && c17) + (c19 && c29 && c28 && c18 && c26 && c12 && c30 && c31 && c27 && c17) + (c19 && c29 && c28 && c18 && c26 && c12 && c30 && c27 && c17) + (c19 && c18 && c26 && c12 && c32 && c27 && c17) + (c19 && c18 && c26 && c12 && c33 && c34 && c17) + (c19 && c36 && c18 && c26 && c12 && c33 && c35 && c17) + (c19 && c18 && c26 && c37 && c12 && c33 && c35 && c17) + (c19 && c18 && c26 && c37 && c12 && c33 && c35 && c38 && c17) + (c39 && c12 && c17) + (c41 && c40) + (c40 && c16 && c42) + (c16 && c43 && c42 && c45 && c40 && c44) + (c16 && c43 && c42 && c5 && c40 && c44) + (c46 && c51 && c49 && c48 && c47 && c50) + (c52 && c46 && c49 && c48 && c47) + (c46 && c48 && c53 && c47) + (c46 && c54) + (c57 && c40 && c55 && c56) + (c40 && c55 && c56 && c58) + (c40 && c55 && c16 && c59) + (c60 && c40) + (c61 && c12) + (c62 && c63 && c16 && c12) + (c62 && c63 && c16 && c64 && c12) + (c65 && c16 && c12 && c62 && c63 && c64) + (c61 && c16 && c12 && c62 && c5 && c66) + (c61 && c16 && c12 && c62 && c66 && c67 && c68) + (c61 && c69 && c16 && c12 && c62 && c66 && c67) + 0;


		Class[1] = (c1 && c0) + (c1 && c0 && c3 && c2) + (c0 && c3 && c4 && c2 && c1 && c5) + (c0 && c3 && c4 && c2 && c1 && c6) + (c1 && c0 && c7 && c2) + (c8 && c0) + (c11 && c0 && c10 && c8 && c9) + (c0 && c10 && c8 && c9) + (c13 && c15 && c14 && c12) + (c13 && c14 && c12) + (c13 && c16 && c12) + (c19 && c20 && c21 && c18 && c12 && c17) + (c19 && c20 && c22 && c18 && c12 && c23 && c24 && c17) + (c19 && c20 && c22 && c18 && c12 && c23 && c17 && c25) + (c19 && c29 && c28 && c18 && c26 && c12 && c27 && c17) + (c19 && c29 && c28 && c18 && c26 && c12 && c30 && c31 && c27 && c17) + (c19 && c28 && c18 && c26 && c12 && c27 && c17) + (c19 && c18 && c26 && c12 && c32 && c27 && c17) + (c19 && c18 && c26 && c12 && c33 && c34 && c17) + (c19 && c36 && c18 && c26 && c12 && c33 && c35 && c17) + (c19 && c18 && c26 && c37 && c12 && c33 && c35 && c38 && c17) + (c18 && c12 && c17) + (c39 && c12 && c17) + (c41 && c40) + (c40 && c16 && c43 && c42) + (c16 && c43 && c42 && c45 && c40 && c44) + (c16 && c43 && c42 && c5 && c40 && c44) + (c16 && c40) + (c46 && c51 && c49 && c48 && c47 && c50) + (c46 && c49 && c48 && c47 && c50) + (c52 && c46 && c49 && c48 && c47) + (c46 && c48 && c53 && c47) + (c47 && c46) + (c46 && c54) + (c57 && c40 && c55 && c56) + (c40 && c55 && c56 && c58) + (c40 && c55 && c16 && c59) + (c40 && c55 && c16) + (c60 && c40) + (c61 && c12) + (c65 && c16 && c12 && c62 && c63 && c64) + (c61 && c16 && c12 && c62 && c5 && c66) + (c61 && c16 && c12 && c62 && c66 && c67 && c68) + (c61 && c69 && c16 && c12 && c62 && c66 && c67) + (c62 && c61 && c16 && c12) + (c16 && c12) + 0;

		int p0 = (Class[0] > Class[1])?0:1;
		int Q0 = (Class[0] > Class[1])?Class[0]:Class[1];
		P[i] = p0;
	}
}