__global__ void RF_with_IF(float *F0, float *F1, float *F2, float *F3, float *F4, float *F5, float *F6, float *F7, float *F8, float *F9, float *F10, float *F11, float *F12, float *F13, float *F14, float *F15, float *F16, float *F17, float *F18, float *F19, float *F20, float *F21, float *F22, float *F23, float *F24, float *F25, float *F26, float *F27, float *F28, float *F29, float *F30, float *F31, float *F32, float *F33, float *F34, float *F35, float *F36, float *F37, float *F38, float *F39, float *F40, float *F41, float *F42, float *F43, float *F44, float *F45, int *P, const int N)
{	int i = blockIdx.x * blockDim.x + threadIdx.x;
	int Class[2]; 
	Class[0] = 0;
	Class[1] = 0;
	if (i < N) {
		if (F29[i] <= -48.777) {
			if (F2[i] <= 0.089) {
				Class[1]++;
			} else {
				if (F13[i] <= -18.409) {
					if (F13[i] <= -20.773) {
						Class[1]++;
					} else {
						if (F38[i] <= 0.094) {
							if (F0[i] <= 37.66) {
								Class[0]++;
							} else {
								Class[1]++;
							}
						} else {
							if (F39[i] <= 9.594) {
								Class[1]++;
							} else {
								Class[0]++;
							}
						}
					}
				} else {
					if (F45[i] <= -58.259) {
						Class[0]++;
					} else {
						Class[1]++;
					}
				}
			}
		} else {
			if (F30[i] <= 45.19) {
				Class[1]++;
			} else {
				if (F30[i] <= 45.3) {
					Class[0]++;
				} else {
					if (F29[i] <= -48.624) {
						if (F2[i] <= 1.087) {
							Class[1]++;
						} else {
							Class[0]++;
						}
					} else {
						Class[1]++;
					}
				}
			}
		}

		if (F20[i] <= 9.495) {
			if (F20[i] <= 9.458) {
				if (F45[i] <= -59.612) {
					if (F23[i] <= 9.44) {
						Class[1]++;
					} else {
						Class[0]++;
					}
				} else {
					Class[1]++;
				}
			} else {
				if (F35[i] <= 30.781) {
					Class[0]++;
				} else {
					Class[1]++;
				}
			}
		} else {
			if (F28[i] <= 2.456) {
				if (F40[i] <= -1.336) {
					if (F46[i] <= -37.184) {
						if (F8[i] <= 0.131) {
							if (F0[i] <= 37.625) {
								Class[0]++;
							} else {
								Class[1]++;
							}
						} else {
							if (F25[i] <= 0.003) {
								if (F22[i] <= 0.098) {
									if (F0[i] <= 36.345) {
										Class[0]++;
									} else {
										Class[1]++;
									}
								} else {
									if (F13[i] <= -16.157) {
										Class[1]++;
									} else {
										Class[0]++;
									}
								}
							} else {
								Class[0]++;
							}
						}
					} else {
						if (F3[i] <= 7.632) {
							if (F4[i] <= 5.743) {
								if (F45[i] <= -60.662) {
									if (F47[i] <= -58.866) {
										Class[1]++;
									} else {
										if (F43[i] <= -0.015) {
											if (F28[i] <= 0.974) {
												Class[0]++;
											} else {
												Class[1]++;
											}
										} else {
											Class[0]++;
										}
									}
								} else {
									Class[1]++;
								}
							} else {
								if (F11[i] <= 7.422) {
									Class[0]++;
								} else {
									Class[1]++;
								}
							}
						} else {
							if (F3[i] <= 7.673) {
								if (F2[i] <= 2.29) {
									Class[0]++;
								} else {
									Class[1]++;
								}
							} else {
								if (F13[i] <= -20.262) {
									if (F38[i] <= 0.075) {
										Class[1]++;
									} else {
										Class[0]++;
									}
								} else {
									if (F38[i] <= 0.095) {
										Class[0]++;
									} else {
										if (F7[i] <= 6.158) {
											Class[0]++;
										} else {
											Class[1]++;
										}
									}
								}
							}
						}
					}
				} else {
					Class[1]++;
				}
			} else {
				if (F35[i] <= 30.594) {
					Class[0]++;
				} else {
					Class[1]++;
				}
			}
		}

		if (F23[i] <= 9.539) {
			if (F0[i] <= 37.075) {
				Class[0]++;
			} else {
				Class[1]++;
			}
		} else {
			if (F35[i] <= 30.781) {
				if (F35[i] <= 30.719) {
					Class[0]++;
				} else {
					if (F2[i] <= 0.102) {
						Class[1]++;
					} else {
						if (F6[i] <= 7.406) {
							if (F0[i] <= 37.145) {
								Class[0]++;
							} else {
								Class[1]++;
							}
						} else {
							if (F0[i] <= 37.66) {
								Class[0]++;
							} else {
								Class[1]++;
							}
						}
					}
				}
			} else {
				Class[1]++;
			}
		}

		if (F45[i] <= -59.158) {
			if (F47[i] <= -55.196) {
				if (F6[i] <= 7.778) {
					if (F13[i] <= -18.793) {
						if (F12[i] <= -67.203) {
							if (F41[i] <= 0.243) {
								Class[0]++;
							} else {
								Class[1]++;
							}
						} else {
							Class[1]++;
						}
					} else {
						if (F0[i] <= 38.205) {
							Class[0]++;
						} else {
							Class[1]++;
						}
					}
				} else {
					if (F0[i] <= 37.655) {
						Class[0]++;
					} else {
						Class[1]++;
					}
				}
			} else {
				Class[1]++;
			}
		} else {
			if (F0[i] <= 27.975) {
				Class[0]++;
			} else {
				Class[1]++;
			}
		}

		if (F23[i] <= 9.539) {
			if (F23[i] <= 9.479) {
				if (F12[i] <= -68.786) {
					if (F5[i] <= -0.191) {
						Class[1]++;
					} else {
						Class[0]++;
					}
				} else {
					if (F1[i] <= 30.281) {
						Class[0]++;
					} else {
						Class[1]++;
					}
				}
			} else {
				if (F35[i] <= 30.781) {
					if (F4[i] <= 4.936) {
						Class[0]++;
					} else {
						Class[1]++;
					}
				} else {
					Class[1]++;
				}
			}
		} else {
			if (F0[i] <= 37.65) {
				Class[0]++;
			} else {
				Class[1]++;
			}
		}

		if (F20[i] <= 9.495) {
			if (F18[i] <= 32.219) {
				Class[0]++;
			} else {
				Class[1]++;
			}
		} else {
			if (F35[i] <= 30.781) {
				if (F6[i] <= 7.42) {
					if (F12[i] <= -68.198) {
						Class[0]++;
					} else {
						if (F11[i] <= 6.895) {
							Class[0]++;
						} else {
							if (F19[i] <= 0.484) {
								Class[1]++;
							} else {
								Class[0]++;
							}
						}
					}
				} else {
					if (F18[i] <= 32.219) {
						if (F40[i] <= -1.752) {
							if (F0[i] <= 37.66) {
								Class[0]++;
							} else {
								Class[1]++;
							}
						} else {
							if (F23[i] <= 9.801) {
								if (F0[i] <= 37.705) {
									Class[0]++;
								} else {
									Class[1]++;
								}
							} else {
								if (F19[i] <= 0.144) {
									Class[1]++;
								} else {
									Class[0]++;
								}
							}
						}
					} else {
						Class[1]++;
					}
				}
			} else {
				Class[1]++;
			}
		}
	}
}