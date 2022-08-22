__global__ void RF_with_IF(float *F0, float *F1, float *F2, float *F3, float *F4, float *F5, float *F6, float *F7, float *F8, float *F9, float *F10, int *P, const int N)
{	int i = blockIdx.x * blockDim.x + threadIdx.x;
	int Class[6]; 
	Class[0] = 0;
	Class[1] = 0;
	Class[2] = 0;
	Class[3] = 0;
	Class[4] = 0;
	Class[5] = 0;	if (i < N) {
		if (F7[i] <= 0.995) {
			if (F1[i] <= 0.335) {
				if (F1[i] <= 0.275) {
					if (F0[i] <= 6.0) {
						Class[2]++;
					} else {
						if (F6[i] <= 16.0) {
							if (F8[i] <= 3.215) {
								Class[3]++;
							} else {
								Class[4]++;
							}
						} else {
							if (F4[i] <= 0.076) {
								Class[3]++;
							} else {
								if (F8[i] <= 3.12) {
									Class[5]++;
								} else {
									Class[3]++;
								}
							}
						}
					}
				} else {
					if (F7[i] <= 0.995) {
						if (F0[i] <= 8.0) {
							if (F0[i] <= 7.75) {
								Class[4]++;
							} else {
								if (F8[i] <= 3.15) {
									Class[4]++;
								} else {
									Class[3]++;
								}
							}
						} else {
							Class[4]++;
						}
					} else {
						if (F0[i] <= 8.8) {
							Class[2]++;
						} else {
							Class[4]++;
						}
					}
				}
			} else {
				if (F1[i] <= 1.015) {
					if (F6[i] <= 88.5) {
						if (F9[i] <= 0.525) {
							if (F1[i] <= 0.83) {
								if (F2[i] <= 0.285) {
									if (F0[i] <= 7.2) {
										Class[2]++;
									} else {
										if (F1[i] <= 0.625) {
											Class[2]++;
										} else {
											Class[4]++;
										}
									}
								} else {
									Class[4]++;
								}
							} else {
								Class[3]++;
							}
						} else {
							if (F8[i] <= 3.27) {
								if (F0[i] <= 7.6) {
									if (F7[i] <= 0.995) {
										if (F3[i] <= 1.9) {
											Class[5]++;
										} else {
											if (F2[i] <= 0.315) {
												Class[5]++;
											} else {
												Class[4]++;
											}
										}
									} else {
										Class[2]++;
									}
								} else {
									if (F10[i] <= 11.3) {
										Class[3]++;
									} else {
										if (F0[i] <= 8.85) {
											Class[5]++;
										} else {
											Class[4]++;
										}
									}
								}
							} else {
								if (F8[i] <= 3.515) {
									if (F10[i] <= 12.65) {
										if (F8[i] <= 3.415) {
											Class[3]++;
										} else {
											if (F2[i] <= 0.155) {
												if (F3[i] <= 2.35) {
													Class[3]++;
												} else {
													if (F6[i] <= 40.5) {
														Class[4]++;
													} else {
														Class[3]++;
													}
												}
											} else {
												if (F5[i] <= 9.5) {
													Class[1]++;
												} else {
													Class[4]++;
												}
											}
										}
									} else {
										if (F4[i] <= 0.066) {
											Class[3]++;
										} else {
											Class[4]++;
										}
									}
								} else {
									if (F5[i] <= 13.5) {
										if (F7[i] <= 0.995) {
											if (F6[i] <= 22.5) {
												Class[2]++;
											} else {
												if (F2[i] <= 0.03) {
													Class[4]++;
												} else {
													Class[5]++;
												}
											}
										} else {
											Class[3]++;
										}
									} else {
										Class[3]++;
									}
								}
							}
						}
					} else {
						if (F3[i] <= 2.25) {
							if (F1[i] <= 0.525) {
								Class[4]++;
							} else {
								if (F1[i] <= 0.688) {
									Class[3]++;
								} else {
									Class[4]++;
								}
							}
						} else {
							if (F0[i] <= 6.15) {
								Class[2]++;
							} else {
								Class[3]++;
							}
						}
					}
				} else {
					if (F8[i] <= 3.665) {
						if (F9[i] <= 0.415) {
							Class[0]++;
						} else {
							Class[1]++;
						}
					} else {
						Class[2]++;
					}
				}
			}
		} else {
			if (F10[i] <= 9.85) {
				if (F6[i] <= 83.5) {
					if (F9[i] <= 0.575) {
						if (F6[i] <= 80.0) {
							if (F7[i] <= 1.0) {
								if (F3[i] <= 2.05) {
									if (F1[i] <= 0.732) {
										if (F5[i] <= 27.5) {
											if (F6[i] <= 41.0) {
												if (F2[i] <= 0.355) {
													if (F10[i] <= 9.125) {
														if (F0[i] <= 6.95) {
															Class[1]++;
														} else {
															Class[2]++;
														}
													} else {
														Class[2]++;
													}
												} else {
													if (F0[i] <= 7.8) {
														Class[3]++;
													} else {
														Class[2]++;
													}
												}
											} else {
												if (F7[i] <= 0.996) {
													Class[1]++;
												} else {
													Class[2]++;
												}
											}
										} else {
											Class[3]++;
										}
									} else {
										if (F9[i] <= 0.545) {
											Class[1]++;
										} else {
											Class[2]++;
										}
									}
								} else {
									if (F6[i] <= 57.5) {
										if (F6[i] <= 55.0) {
											if (F2[i] <= 0.195) {
												if (F9[i] <= 0.485) {
													if (F8[i] <= 3.33) {
														Class[3]++;
													} else {
														Class[1]++;
													}
												} else {
													if (F0[i] <= 8.15) {
														if (F4[i] <= 0.064) {
															Class[0]++;
														} else {
															Class[2]++;
														}
													} else {
														if (F0[i] <= 8.7) {
															if (F7[i] <= 0.997) {
																Class[3]++;
															} else {
																Class[2]++;
															}
														} else {
															Class[3]++;
														}
													}
												}
											} else {
												Class[2]++;
											}
										} else {
											Class[3]++;
										}
									} else {
										if (F2[i] <= 0.315) {
											Class[2]++;
										} else {
											if (F10[i] <= 9.75) {
												Class[2]++;
											} else {
												Class[3]++;
											}
										}
									}
								}
							} else {
								Class[3]++;
							}
						} else {
							Class[3]++;
						}
					} else {
						if (F9[i] <= 0.99) {
							if (F4[i] <= 0.098) {
								if (F9[i] <= 0.665) {
									if (F6[i] <= 54.5) {
										if (F6[i] <= 38.5) {
											if (F10[i] <= 9.05) {
												Class[3]++;
											} else {
												if (F1[i] <= 0.575) {
													if (F4[i] <= 0.078) {
														if (F4[i] <= 0.069) {
															if (F6[i] <= 28.5) {
																if (F0[i] <= 6.45) {
																	Class[2]++;
																} else {
																	Class[3]++;
																}
															} else {
																Class[2]++;
															}
														} else {
															Class[2]++;
														}
													} else {
														if (F4[i] <= 0.088) {
															if (F0[i] <= 7.2) {
																Class[3]++;
															} else {
																Class[4]++;
															}
														} else {
															Class[3]++;
														}
													}
												} else {
													Class[2]++;
												}
											}
										} else {
											Class[2]++;
										}
									} else {
										if (F3[i] <= 2.15) {
											if (F3[i] <= 1.65) {
												Class[2]++;
											} else {
												if (F2[i] <= 0.205) {
													if (F4[i] <= 0.082) {
														Class[2]++;
													} else {
														Class[1]++;
													}
												} else {
													Class[3]++;
												}
											}
										} else {
											Class[2]++;
										}
									}
								} else {
									if (F10[i] <= 9.55) {
										if (F3[i] <= 1.85) {
											if (F4[i] <= 0.071) {
												Class[3]++;
											} else {
												Class[2]++;
											}
										} else {
											Class[3]++;
										}
									} else {
										if (F2[i] <= 0.065) {
											Class[2]++;
										} else {
											if (F0[i] <= 7.95) {
												Class[3]++;
											} else {
												if (F1[i] <= 0.315) {
													Class[3]++;
												} else {
													if (F2[i] <= 0.41) {
														Class[4]++;
													} else {
														Class[2]++;
													}
												}
											}
										}
									}
								}
							} else {
								if (F7[i] <= 0.997) {
									Class[2]++;
								} else {
									if (F8[i] <= 3.215) {
										if (F5[i] <= 8.0) {
											Class[3]++;
										} else {
											Class[2]++;
										}
									} else {
										if (F10[i] <= 9.7) {
											Class[3]++;
										} else {
											if (F1[i] <= 0.425) {
												Class[3]++;
											} else {
												Class[2]++;
											}
										}
									}
								}
							}
						} else {
							if (F7[i] <= 0.999) {
								if (F2[i] <= 0.13) {
									Class[1]++;
								} else {
									if (F10[i] <= 9.15) {
										if (F4[i] <= 0.418) {
											Class[3]++;
										} else {
											Class[2]++;
										}
									} else {
										if (F9[i] <= 1.6) {
											Class[2]++;
										} else {
											Class[3]++;
										}
									}
								}
							} else {
								Class[1]++;
							}
						}
					}
				} else {
					if (F4[i] <= 0.067) {
						Class[3]++;
					} else {
						if (F2[i] <= 0.235) {
							if (F4[i] <= 0.098) {
								if (F6[i] <= 100.0) {
									if (F7[i] <= 0.997) {
										if (F4[i] <= 0.089) {
											if (F1[i] <= 0.595) {
												Class[3]++;
											} else {
												if (F7[i] <= 0.997) {
													Class[2]++;
												} else {
													if (F5[i] <= 17.5) {
														Class[3]++;
													} else {
														Class[2]++;
													}
												}
											}
										} else {
											Class[3]++;
										}
									} else {
										Class[2]++;
									}
								} else {
									Class[2]++;
								}
							} else {
								Class[2]++;
							}
						} else {
							if (F0[i] <= 7.45) {
								if (F5[i] <= 17.5) {
									if (F9[i] <= 0.57) {
										Class[3]++;
									} else {
										Class[2]++;
									}
								} else {
									Class[2]++;
								}
							} else {
								Class[2]++;
							}
						}
					}
				}
			} else {
				if (F10[i] <= 11.45) {
					if (F6[i] <= 88.5) {
						if (F0[i] <= 9.8) {
							if (F2[i] <= 0.585) {
								if (F10[i] <= 11.25) {
									if (F0[i] <= 6.15) {
										if (F3[i] <= 1.95) {
											if (F4[i] <= 0.073) {
												Class[4]++;
											} else {
												Class[3]++;
											}
										} else {
											Class[2]++;
										}
									} else {
										if (F1[i] <= 0.913) {
											if (F10[i] <= 11.15) {
												if (F2[i] <= 0.295) {
													if (F9[i] <= 0.545) {
														if (F6[i] <= 66.5) {
															if (F10[i] <= 11.05) {
																if (F4[i] <= 0.08) {
																	if (F2[i] <= 0.08) {
																		Class[3]++;
																	} else {
																		if (F1[i] <= 0.475) {
																			if (F5[i] <= 19.0) {
																				Class[3]++;
																			} else {
																				Class[1]++;
																			}
																		} else {
																			Class[2]++;
																		}
																	}
																} else {
																	Class[2]++;
																}
															} else {
																Class[1]++;
															}
														} else {
															if (F5[i] <= 23.5) {
																Class[2]++;
															} else {
																Class[3]++;
															}
														}
													} else {
														if (F4[i] <= 0.073) {
															if (F8[i] <= 3.24) {
																Class[3]++;
															} else {
																if (F0[i] <= 6.7) {
																	if (F5[i] <= 8.5) {
																		Class[1]++;
																	} else {
																		Class[3]++;
																	}
																} else {
																	if (F1[i] <= 0.84) {
																		if (F5[i] <= 8.0) {
																			if (F0[i] <= 7.55) {
																				Class[1]++;
																			} else {
																				Class[4]++;
																			}
																		} else {
																			if (F1[i] <= 0.688) {
																				Class[2]++;
																			} else {
																				if (F9[i] <= 0.64) {
																					Class[3]++;
																				} else {
																					Class[2]++;
																				}
																			}
																		}
																	} else {
																		Class[1]++;
																	}
																}
															}
														} else {
															if (F5[i] <= 15.5) {
																if (F9[i] <= 0.72) {
																	if (F9[i] <= 0.575) {
																		if (F3[i] <= 1.85) {
																			Class[4]++;
																		} else {
																			if (F3[i] <= 2.9) {
																				Class[3]++;
																			} else {
																				Class[2]++;
																			}
																		}
																	} else {
																		if (F2[i] <= 0.18) {
																			if (F2[i] <= 0.15) {
																				if (F3[i] <= 2.45) {
																					if (F3[i] <= 2.05) {
																						Class[2]++;
																					} else {
																						Class[3]++;
																					}
																				} else {
																					if (F4[i] <= 0.105) {
																						Class[2]++;
																					} else {
																						Class[1]++;
																					}
																				}
																			} else {
																				Class[3]++;
																			}
																		} else {
																			Class[2]++;
																		}
																	}
																} else {
																	Class[3]++;
																}
															} else {
																if (F4[i] <= 0.113) {
																	if (F2[i] <= 0.225) {
																		Class[3]++;
																	} else {
																		if (F7[i] <= 0.996) {
																			Class[2]++;
																		} else {
																			Class[3]++;
																		}
																	}
																} else {
																	Class[2]++;
																}
															}
														}
													}
												} else {
													if (F9[i] <= 0.565) {
														Class[3]++;
													} else {
														if (F7[i] <= 0.997) {
															if (F5[i] <= 42.5) {
																if (F2[i] <= 0.505) {
																	if (F2[i] <= 0.445) {
																		Class[3]++;
																	} else {
																		if (F4[i] <= 0.103) {
																			Class[3]++;
																		} else {
																			Class[2]++;
																		}
																	}
																} else {
																	if (F7[i] <= 0.996) {
																		Class[3]++;
																	} else {
																		Class[2]++;
																	}
																}
															} else {
																Class[4]++;
															}
														} else {
															if (F9[i] <= 0.59) {
																Class[1]++;
															} else {
																if (F8[i] <= 3.335) {
																	if (F5[i] <= 10.0) {
																		if (F10[i] <= 10.95) {
																			Class[3]++;
																		} else {
																			if (F2[i] <= 0.465) {
																				Class[4]++;
																			} else {
																				Class[3]++;
																			}
																		}
																	} else {
																		if (F6[i] <= 54.5) {
																			if (F8[i] <= 3.28) {
																				if (F9[i] <= 0.655) {
																					Class[2]++;
																				} else {
																					if (F9[i] <= 0.68) {
																						Class[3]++;
																					} else {
																						Class[4]++;
																					}
																				}
																			} else {
																				Class[4]++;
																			}
																		} else {
																			Class[2]++;
																		}
																	}
																} else {
																	if (F1[i] <= 0.405) {
																		if (F7[i] <= 0.998) {
																			Class[2]++;
																		} else {
																			if (F4[i] <= 0.08) {
																				Class[3]++;
																			} else {
																				Class[4]++;
																			}
																		}
																	} else {
																		Class[3]++;
																	}
																}
															}
														}
													}
												}
											} else {
												if (F2[i] <= 0.15) {
													Class[1]++;
												} else {
													if (F6[i] <= 15.5) {
														Class[3]++;
													} else {
														Class[2]++;
													}
												}
											}
										} else {
											if (F5[i] <= 9.0) {
												if (F5[i] <= 4.0) {
													Class[2]++;
												} else {
													if (F7[i] <= 0.996) {
														Class[1]++;
													} else {
														Class[0]++;
													}
												}
											} else {
												Class[2]++;
											}
										}
									}
								} else {
									if (F5[i] <= 5.5) {
										if (F2[i] <= 0.4) {
											Class[2]++;
										} else {
											Class[3]++;
										}
									} else {
										Class[3]++;
									}
								}
							} else {
								Class[2]++;
							}
						} else {
							if (F8[i] <= 3.05) {
								if (F6[i] <= 32.0) {
									if (F2[i] <= 0.58) {
										if (F8[i] <= 2.95) {
											Class[2]++;
										} else {
											Class[4]++;
										}
									} else {
										Class[2]++;
									}
								} else {
									Class[4]++;
								}
							} else {
								if (F8[i] <= 3.115) {
									if (F8[i] <= 3.095) {
										if (F9[i] <= 0.55) {
											Class[2]++;
										} else {
											if (F9[i] <= 0.855) {
												Class[3]++;
											} else {
												Class[2]++;
											}
										}
									} else {
										Class[3]++;
									}
								} else {
									if (F1[i] <= 0.36) {
										if (F5[i] <= 29.5) {
											if (F10[i] <= 10.5) {
												if (F7[i] <= 0.997) {
													Class[4]++;
												} else {
													Class[3]++;
												}
											} else {
												if (F8[i] <= 3.255) {
													if (F3[i] <= 1.75) {
														if (F4[i] <= 0.058) {
															Class[4]++;
														} else {
															Class[3]++;
														}
													} else {
														Class[4]++;
													}
												} else {
													if (F9[i] <= 0.8) {
														Class[4]++;
													} else {
														Class[3]++;
													}
												}
											}
										} else {
											Class[4]++;
										}
									} else {
										if (F2[i] <= 0.425) {
											if (F5[i] <= 8.5) {
												Class[1]++;
											} else {
												Class[3]++;
											}
										} else {
											if (F6[i] <= 19.5) {
												Class[2]++;
											} else {
												if (F0[i] <= 10.2) {
													Class[2]++;
												} else {
													if (F7[i] <= 0.998) {
														if (F2[i] <= 0.47) {
															Class[1]++;
														} else {
															Class[2]++;
														}
													} else {
														if (F4[i] <= 0.09) {
															if (F6[i] <= 54.5) {
																Class[3]++;
															} else {
																if (F0[i] <= 12.0) {
																	Class[2]++;
																} else {
																	Class[3]++;
																}
															}
														} else {
															if (F6[i] <= 21.5) {
																Class[3]++;
															} else {
																if (F6[i] <= 35.5) {
																	Class[4]++;
																} else {
																	Class[3]++;
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					} else {
						if (F9[i] <= 1.425) {
							Class[2]++;
						} else {
							Class[3]++;
						}
					}
				} else {
					if (F2[i] <= 0.305) {
						if (F5[i] <= 8.5) {
							if (F1[i] <= 0.69) {
								Class[1]++;
							} else {
								Class[2]++;
							}
						} else {
							if (F3[i] <= 2.4) {
								Class[3]++;
							} else {
								if (F2[i] <= 0.065) {
									Class[4]++;
								} else {
									Class[3]++;
								}
							}
						}
					} else {
						if (F10[i] <= 12.45) {
							if (F9[i] <= 0.625) {
								if (F4[i] <= 0.059) {
									Class[1]++;
								} else {
									if (F1[i] <= 0.31) {
										Class[2]++;
									} else {
										if (F3[i] <= 5.4) {
											if (F7[i] <= 0.996) {
												if (F3[i] <= 2.55) {
													Class[4]++;
												} else {
													Class[3]++;
												}
											} else {
												Class[3]++;
											}
										} else {
											Class[4]++;
										}
									}
								}
							} else {
								if (F3[i] <= 2.3) {
									if (F7[i] <= 0.995) {
										Class[4]++;
									} else {
										if (F9[i] <= 0.745) {
											Class[3]++;
										} else {
											if (F7[i] <= 0.996) {
												Class[4]++;
											} else {
												Class[3]++;
											}
										}
									}
								} else {
									if (F7[i] <= 0.997) {
										if (F5[i] <= 10.5) {
											if (F7[i] <= 0.996) {
												Class[2]++;
											} else {
												Class[5]++;
											}
										} else {
											Class[4]++;
										}
									} else {
										Class[4]++;
									}
								}
							}
						} else {
							if (F10[i] <= 14.15) {
								if (F6[i] <= 19.5) {
									Class[5]++;
								} else {
									if (F2[i] <= 0.475) {
										Class[5]++;
									} else {
										if (F5[i] <= 8.5) {
											Class[3]++;
										} else {
											Class[4]++;
										}
									}
								}
							} else {
								Class[2]++;
							}
						}
					}
				}
			}
		}

		if (F1[i] <= 0.355) {
			if (F7[i] <= 0.995) {
				if (F9[i] <= 0.795) {
					if (F2[i] <= 0.455) {
						if (F4[i] <= 0.045) {
							Class[4]++;
						} else {
							if (F6[i] <= 35.5) {
								if (F2[i] <= 0.395) {
									if (F9[i] <= 0.535) {
										Class[3]++;
									} else {
										if (F7[i] <= 0.995) {
											Class[4]++;
										} else {
											if (F2[i] <= 0.36) {
												Class[3]++;
											} else {
												Class[4]++;
											}
										}
									}
								} else {
									if (F10[i] <= 12.55) {
										Class[3]++;
									} else {
										Class[4]++;
									}
								}
							} else {
								Class[3]++;
							}
						}
					} else {
						if (F4[i] <= 0.065) {
							if (F2[i] <= 0.66) {
								Class[3]++;
							} else {
								Class[4]++;
							}
						} else {
							if (F2[i] <= 0.53) {
								Class[4]++;
							} else {
								Class[5]++;
							}
						}
					}
				} else {
					Class[4]++;
				}
			} else {
				if (F0[i] <= 6.2) {
					if (F5[i] <= 9.0) {
						Class[1]++;
					} else {
						if (F7[i] <= 0.997) {
							Class[2]++;
						} else {
							Class[3]++;
						}
					}
				} else {
					if (F6[i] <= 22.5) {
						if (F7[i] <= 0.998) {
							if (F8[i] <= 3.365) {
								if (F10[i] <= 11.55) {
									if (F1[i] <= 0.25) {
										Class[3]++;
									} else {
										if (F3[i] <= 2.1) {
											if (F10[i] <= 10.3) {
												if (F7[i] <= 0.996) {
													Class[5]++;
												} else {
													Class[4]++;
												}
											} else {
												Class[3]++;
											}
										} else {
											Class[4]++;
										}
									}
								} else {
									Class[5]++;
								}
							} else {
								Class[4]++;
							}
						} else {
							if (F8[i] <= 3.18) {
								Class[3]++;
							} else {
								if (F4[i] <= 0.071) {
									if (F7[i] <= 0.998) {
										Class[4]++;
									} else {
										Class[3]++;
									}
								} else {
									if (F2[i] <= 0.615) {
										Class[2]++;
									} else {
										Class[4]++;
									}
								}
							}
						}
					} else {
						if (F6[i] <= 80.5) {
							if (F6[i] <= 30.5) {
								if (F9[i] <= 1.005) {
									if (F2[i] <= 0.64) {
										Class[3]++;
									} else {
										Class[2]++;
									}
								} else {
									Class[4]++;
								}
							} else {
								if (F10[i] <= 10.5) {
									if (F2[i] <= 0.44) {
										if (F4[i] <= 0.081) {
											if (F0[i] <= 7.7) {
												Class[2]++;
											} else {
												Class[3]++;
											}
										} else {
											Class[2]++;
										}
									} else {
										Class[3]++;
									}
								} else {
									if (F0[i] <= 8.05) {
										if (F6[i] <= 43.0) {
											Class[5]++;
										} else {
											if (F6[i] <= 58.0) {
												Class[4]++;
											} else {
												Class[2]++;
											}
										}
									} else {
										if (F4[i] <= 0.108) {
											if (F5[i] <= 28.5) {
												if (F10[i] <= 11.15) {
													Class[3]++;
												} else {
													Class[4]++;
												}
											} else {
												Class[4]++;
											}
										} else {
											Class[3]++;
										}
									}
								}
							}
						} else {
							if (F10[i] <= 10.1) {
								Class[2]++;
							} else {
								if (F4[i] <= 0.091) {
									Class[2]++;
								} else {
									Class[4]++;
								}
							}
						}
					}
				}
			}
		} else {
			if (F9[i] <= 0.555) {
				if (F8[i] <= 3.485) {
					if (F7[i] <= 0.995) {
						if (F9[i] <= 0.545) {
							if (F3[i] <= 2.3) {
								if (F7[i] <= 0.994) {
									Class[3]++;
								} else {
									if (F3[i] <= 1.45) {
										Class[2]++;
									} else {
										Class[3]++;
									}
								}
							} else {
								if (F1[i] <= 0.5) {
									Class[4]++;
								} else {
									Class[2]++;
								}
							}
						} else {
							Class[4]++;
						}
					} else {
						if (F10[i] <= 11.05) {
							if (F5[i] <= 30.5) {
								if (F5[i] <= 29.5) {
									if (F0[i] <= 7.95) {
										if (F3[i] <= 4.925) {
											if (F1[i] <= 0.515) {
												if (F2[i] <= 0.03) {
													Class[3]++;
												} else {
													if (F8[i] <= 3.31) {
														if (F2[i] <= 0.32) {
															if (F3[i] <= 2.75) {
																Class[3]++;
															} else {
																Class[2]++;
															}
														} else {
															Class[2]++;
														}
													} else {
														Class[2]++;
													}
												}
											} else {
												if (F6[i] <= 86.5) {
													if (F1[i] <= 0.56) {
														if (F10[i] <= 9.35) {
															Class[1]++;
														} else {
															Class[2]++;
														}
													} else {
														Class[2]++;
													}
												} else {
													if (F4[i] <= 0.096) {
														Class[2]++;
													} else {
														Class[3]++;
													}
												}
											}
										} else {
											if (F7[i] <= 0.997) {
												Class[3]++;
											} else {
												if (F10[i] <= 9.7) {
													Class[2]++;
												} else {
													Class[0]++;
												}
											}
										}
									} else {
										if (F1[i] <= 0.675) {
											if (F3[i] <= 3.1) {
												if (F7[i] <= 0.997) {
													if (F9[i] <= 0.455) {
														Class[2]++;
													} else {
														if (F8[i] <= 3.275) {
															if (F2[i] <= 0.265) {
																Class[3]++;
															} else {
																Class[2]++;
															}
														} else {
															Class[2]++;
														}
													}
												} else {
													if (F6[i] <= 14.5) {
														if (F2[i] <= 0.205) {
															Class[2]++;
														} else {
															Class[1]++;
														}
													} else {
														Class[2]++;
													}
												}
											} else {
												if (F10[i] <= 10.25) {
													if (F6[i] <= 86.5) {
														Class[2]++;
													} else {
														Class[3]++;
													}
												} else {
													Class[3]++;
												}
											}
										} else {
											if (F3[i] <= 2.05) {
												if (F8[i] <= 3.31) {
													Class[1]++;
												} else {
													Class[2]++;
												}
											} else {
												if (F8[i] <= 3.34) {
													if (F10[i] <= 9.75) {
														if (F10[i] <= 9.45) {
															if (F8[i] <= 3.21) {
																Class[2]++;
															} else {
																Class[3]++;
															}
														} else {
															Class[3]++;
														}
													} else {
														if (F9[i] <= 0.505) {
															if (F0[i] <= 8.05) {
																Class[3]++;
															} else {
																Class[2]++;
															}
														} else {
															Class[2]++;
														}
													}
												} else {
													if (F6[i] <= 29.5) {
														if (F5[i] <= 9.0) {
															if (F3[i] <= 3.75) {
																Class[0]++;
															} else {
																Class[2]++;
															}
														} else {
															Class[1]++;
														}
													} else {
														Class[2]++;
													}
												}
											}
										}
									}
								} else {
									Class[3]++;
								}
							} else {
								Class[2]++;
							}
						} else {
							if (F9[i] <= 0.525) {
								if (F1[i] <= 0.545) {
									Class[4]++;
								} else {
									Class[1]++;
								}
							} else {
								Class[3]++;
							}
						}
					}
				} else {
					if (F5[i] <= 23.5) {
						if (F9[i] <= 0.485) {
							if (F10[i] <= 11.65) {
								Class[1]++;
							} else {
								Class[3]++;
							}
						} else {
							if (F8[i] <= 3.585) {
								if (F4[i] <= 0.048) {
									Class[3]++;
								} else {
									if (F1[i] <= 0.84) {
										Class[2]++;
									} else {
										if (F9[i] <= 0.505) {
											Class[1]++;
										} else {
											Class[2]++;
										}
									}
								}
							} else {
								if (F6[i] <= 11.5) {
									Class[3]++;
								} else {
									if (F1[i] <= 1.102) {
										Class[1]++;
									} else {
										Class[0]++;
									}
								}
							}
						}
					} else {
						Class[3]++;
					}
				}
			} else {
				if (F3[i] <= 4.95) {
					if (F1[i] <= 0.605) {
						if (F9[i] <= 0.715) {
							if (F5[i] <= 19.5) {
								if (F10[i] <= 9.75) {
									if (F8[i] <= 3.365) {
										if (F10[i] <= 9.35) {
											if (F0[i] <= 6.7) {
												Class[2]++;
											} else {
												if (F10[i] <= 9.25) {
													Class[3]++;
												} else {
													if (F7[i] <= 0.999) {
														if (F0[i] <= 9.6) {
															if (F5[i] <= 8.0) {
																Class[3]++;
															} else {
																Class[2]++;
															}
														} else {
															Class[3]++;
														}
													} else {
														Class[3]++;
													}
												}
											}
										} else {
											if (F9[i] <= 0.615) {
												if (F3[i] <= 2.25) {
													if (F4[i] <= 0.073) {
														if (F5[i] <= 6.0) {
															Class[2]++;
														} else {
															Class[4]++;
														}
													} else {
														Class[3]++;
													}
												} else {
													if (F7[i] <= 0.998) {
														Class[2]++;
													} else {
														Class[4]++;
													}
												}
											} else {
												if (F9[i] <= 0.68) {
													if (F5[i] <= 6.5) {
														if (F8[i] <= 3.115) {
															Class[2]++;
														} else {
															Class[3]++;
														}
													} else {
														if (F0[i] <= 7.75) {
															if (F7[i] <= 0.996) {
																Class[2]++;
															} else {
																Class[3]++;
															}
														} else {
															Class[2]++;
														}
													}
												} else {
													Class[3]++;
												}
											}
										}
									} else {
										if (F1[i] <= 0.585) {
											if (F2[i] <= 0.18) {
												if (F0[i] <= 7.05) {
													if (F2[i] <= 0.03) {
														Class[2]++;
													} else {
														if (F7[i] <= 0.996) {
															Class[2]++;
														} else {
															Class[3]++;
														}
													}
												} else {
													Class[4]++;
												}
											} else {
												Class[2]++;
											}
										} else {
											Class[3]++;
										}
									}
								} else {
									if (F8[i] <= 3.595) {
										if (F4[i] <= 0.091) {
											if (F0[i] <= 9.35) {
												if (F7[i] <= 0.998) {
													if (F9[i] <= 0.705) {
														if (F3[i] <= 2.15) {
															if (F0[i] <= 6.15) {
																if (F10[i] <= 11.8) {
																	Class[2]++;
																} else {
																	Class[3]++;
																}
															} else {
																if (F6[i] <= 32.5) {
																	Class[3]++;
																} else {
																	if (F10[i] <= 10.25) {
																		Class[3]++;
																	} else {
																		if (F2[i] <= 0.215) {
																			if (F7[i] <= 0.995) {
																				Class[3]++;
																			} else {
																				Class[2]++;
																			}
																		} else {
																			Class[3]++;
																		}
																	}
																}
															}
														} else {
															if (F9[i] <= 0.595) {
																if (F8[i] <= 3.235) {
																	Class[2]++;
																} else {
																	if (F2[i] <= 0.11) {
																		if (F5[i] <= 11.0) {
																			Class[1]++;
																		} else {
																			Class[3]++;
																		}
																	} else {
																		Class[3]++;
																	}
																}
															} else {
																if (F0[i] <= 8.25) {
																	if (F10[i] <= 10.35) {
																		Class[4]++;
																	} else {
																		if (F10[i] <= 11.65) {
																			Class[3]++;
																		} else {
																			Class[4]++;
																		}
																	}
																} else {
																	Class[4]++;
																}
															}
														}
													} else {
														if (F2[i] <= 0.285) {
															Class[2]++;
														} else {
															Class[3]++;
														}
													}
												} else {
													Class[2]++;
												}
											} else {
												if (F0[i] <= 12.3) {
													Class[3]++;
												} else {
													if (F5[i] <= 6.0) {
														Class[2]++;
													} else {
														Class[3]++;
													}
												}
											}
										} else {
											if (F1[i] <= 0.52) {
												if (F7[i] <= 0.998) {
													if (F8[i] <= 3.21) {
														Class[4]++;
													} else {
														if (F7[i] <= 0.996) {
															if (F6[i] <= 9.0) {
																Class[1]++;
															} else {
																Class[3]++;
															}
														} else {
															Class[2]++;
														}
													}
												} else {
													Class[2]++;
												}
											} else {
												if (F4[i] <= 0.115) {
													Class[2]++;
												} else {
													if (F9[i] <= 0.635) {
														Class[3]++;
													} else {
														Class[1]++;
													}
												}
											}
										}
									} else {
										if (F3[i] <= 1.5) {
											Class[3]++;
										} else {
											if (F7[i] <= 0.995) {
												Class[2]++;
											} else {
												if (F5[i] <= 6.0) {
													Class[1]++;
												} else {
													Class[2]++;
												}
											}
										}
									}
								}
							} else {
								if (F10[i] <= 10.65) {
									if (F6[i] <= 70.5) {
										if (F5[i] <= 32.5) {
											if (F3[i] <= 3.65) {
												if (F5[i] <= 22.5) {
													if (F7[i] <= 0.997) {
														if (F9[i] <= 0.61) {
															Class[3]++;
														} else {
															Class[2]++;
														}
													} else {
														Class[2]++;
													}
												} else {
													if (F6[i] <= 61.5) {
														if (F9[i] <= 0.645) {
															if (F3[i] <= 1.95) {
																if (F6[i] <= 52.5) {
																	Class[2]++;
																} else {
																	Class[3]++;
																}
															} else {
																Class[2]++;
															}
														} else {
															if (F7[i] <= 0.996) {
																Class[3]++;
															} else {
																Class[4]++;
															}
														}
													} else {
														Class[3]++;
													}
												}
											} else {
												Class[1]++;
											}
										} else {
											Class[2]++;
										}
									} else {
										if (F5[i] <= 32.5) {
											if (F6[i] <= 96.0) {
												if (F8[i] <= 3.26) {
													Class[3]++;
												} else {
													if (F10[i] <= 9.6) {
														if (F8[i] <= 3.395) {
															Class[3]++;
														} else {
															Class[2]++;
														}
													} else {
														Class[2]++;
													}
												}
											} else {
												Class[2]++;
											}
										} else {
											Class[3]++;
										}
									}
								} else {
									if (F3[i] <= 2.55) {
										if (F6[i] <= 40.5) {
											Class[2]++;
										} else {
											Class[3]++;
										}
									} else {
										if (F10[i] <= 10.8) {
											Class[3]++;
										} else {
											Class[2]++;
										}
									}
								}
							}
						} else {
							if (F10[i] <= 12.45) {
								if (F4[i] <= 0.104) {
									if (F8[i] <= 3.345) {
										if (F3[i] <= 4.05) {
											if (F4[i] <= 0.071) {
												if (F0[i] <= 8.45) {
													Class[4]++;
												} else {
													if (F4[i] <= 0.049) {
														Class[3]++;
													} else {
														if (F3[i] <= 1.95) {
															Class[3]++;
														} else {
															if (F9[i] <= 0.835) {
																Class[2]++;
															} else {
																if (F2[i] <= 0.565) {
																	Class[3]++;
																} else {
																	Class[2]++;
																}
															}
														}
													}
												}
											} else {
												if (F1[i] <= 0.51) {
													if (F6[i] <= 122.0) {
														if (F5[i] <= 28.5) {
															if (F8[i] <= 3.04) {
																if (F5[i] <= 14.0) {
																	Class[3]++;
																} else {
																	Class[4]++;
																}
															} else {
																if (F0[i] <= 10.8) {
																	Class[3]++;
																} else {
																	if (F6[i] <= 37.5) {
																		if (F5[i] <= 8.5) {
																			Class[3]++;
																		} else {
																			Class[4]++;
																		}
																	} else {
																		Class[3]++;
																	}
																}
															}
														} else {
															if (F3[i] <= 2.5) {
																Class[3]++;
															} else {
																Class[2]++;
															}
														}
													} else {
														Class[2]++;
													}
												} else {
													if (F1[i] <= 0.565) {
														Class[4]++;
													} else {
														Class[3]++;
													}
												}
											}
										} else {
											Class[4]++;
										}
									} else {
										if (F6[i] <= 53.5) {
											Class[3]++;
										} else {
											if (F9[i] <= 0.755) {
												Class[2]++;
											} else {
												if (F10[i] <= 10.25) {
													Class[2]++;
												} else {
													Class[3]++;
												}
											}
										}
									}
								} else {
									if (F10[i] <= 9.65) {
										if (F9[i] <= 0.885) {
											Class[2]++;
										} else {
											if (F4[i] <= 0.132) {
												Class[2]++;
											} else {
												if (F4[i] <= 0.418) {
													if (F9[i] <= 0.98) {
														Class[3]++;
													} else {
														if (F2[i] <= 0.49) {
															Class[2]++;
														} else {
															Class[3]++;
														}
													}
												} else {
													Class[2]++;
												}
											}
										}
									} else {
										if (F2[i] <= 0.595) {
											if (F1[i] <= 0.535) {
												if (F0[i] <= 11.25) {
													if (F8[i] <= 3.375) {
														if (F2[i] <= 0.37) {
															if (F5[i] <= 19.5) {
																Class[2]++;
															} else {
																Class[3]++;
															}
														} else {
															Class[3]++;
														}
													} else {
														Class[0]++;
													}
												} else {
													Class[1]++;
												}
											} else {
												Class[2]++;
											}
										} else {
											Class[4]++;
										}
									}
								}
							} else {
								if (F9[i] <= 0.83) {
									if (F2[i] <= 0.36) {
										if (F2[i] <= 0.085) {
											if (F7[i] <= 0.992) {
												Class[5]++;
											} else {
												Class[4]++;
											}
										} else {
											Class[5]++;
										}
									} else {
										if (F4[i] <= 0.096) {
											if (F6[i] <= 22.0) {
												Class[3]++;
											} else {
												Class[4]++;
											}
										} else {
											Class[2]++;
										}
									}
								} else {
									Class[4]++;
								}
							}
						}
					} else {
						if (F7[i] <= 0.996) {
							if (F9[i] <= 0.625) {
								if (F5[i] <= 12.5) {
									if (F10[i] <= 11.1) {
										if (F8[i] <= 3.475) {
											Class[2]++;
										} else {
											Class[3]++;
										}
									} else {
										if (F0[i] <= 6.05) {
											Class[2]++;
										} else {
											Class[1]++;
										}
									}
								} else {
									if (F9[i] <= 0.595) {
										Class[3]++;
									} else {
										if (F6[i] <= 56.5) {
											Class[3]++;
										} else {
											if (F3[i] <= 1.8) {
												Class[2]++;
											} else {
												Class[3]++;
											}
										}
									}
								}
							} else {
								if (F10[i] <= 12.35) {
									if (F6[i] <= 89.0) {
										if (F10[i] <= 11.6) {
											Class[3]++;
										} else {
											if (F9[i] <= 0.725) {
												Class[4]++;
											} else {
												Class[3]++;
											}
										}
									} else {
										Class[2]++;
									}
								} else {
									Class[5]++;
								}
							}
						} else {
							if (F10[i] <= 10.35) {
								if (F7[i] <= 1.0) {
									if (F6[i] <= 17.0) {
										if (F9[i] <= 0.585) {
											Class[2]++;
										} else {
											if (F1[i] <= 0.743) {
												Class[3]++;
											} else {
												Class[1]++;
											}
										}
									} else {
										if (F8[i] <= 2.945) {
											Class[3]++;
										} else {
											if (F3[i] <= 4.0) {
												if (F4[i] <= 0.098) {
													if (F2[i] <= 0.265) {
														if (F4[i] <= 0.095) {
															if (F0[i] <= 7.65) {
																if (F3[i] <= 2.05) {
																	if (F8[i] <= 3.26) {
																		Class[1]++;
																	} else {
																		if (F2[i] <= 0.07) {
																			Class[2]++;
																		} else {
																			if (F3[i] <= 1.85) {
																				if (F9[i] <= 0.68) {
																					Class[2]++;
																				} else {
																					Class[3]++;
																				}
																			} else {
																				Class[3]++;
																			}
																		}
																	}
																} else {
																	if (F7[i] <= 0.997) {
																		Class[2]++;
																	} else {
																		Class[3]++;
																	}
																}
															} else {
																Class[2]++;
															}
														} else {
															if (F0[i] <= 9.15) {
																Class[3]++;
															} else {
																Class[2]++;
															}
														}
													} else {
														if (F8[i] <= 3.07) {
															Class[2]++;
														} else {
															Class[3]++;
														}
													}
												} else {
													Class[2]++;
												}
											} else {
												Class[3]++;
											}
										}
									}
								} else {
									Class[3]++;
								}
							} else {
								if (F10[i] <= 11.1) {
									if (F9[i] <= 0.61) {
										if (F7[i] <= 0.996) {
											Class[2]++;
										} else {
											if (F3[i] <= 1.65) {
												Class[1]++;
											} else {
												if (F3[i] <= 3.6) {
													if (F1[i] <= 0.947) {
														Class[3]++;
													} else {
														Class[1]++;
													}
												} else {
													Class[1]++;
												}
											}
										}
									} else {
										if (F0[i] <= 9.25) {
											if (F7[i] <= 0.997) {
												if (F5[i] <= 12.0) {
													Class[3]++;
												} else {
													if (F5[i] <= 21.5) {
														Class[4]++;
													} else {
														Class[2]++;
													}
												}
											} else {
												Class[2]++;
											}
										} else {
											Class[3]++;
										}
									}
								} else {
									if (F8[i] <= 3.16) {
										Class[4]++;
									} else {
										Class[2]++;
									}
								}
							}
						}
					}
				} else {
					if (F3[i] <= 8.45) {
						if (F9[i] <= 0.57) {
							Class[1]++;
						} else {
							if (F3[i] <= 6.575) {
								if (F7[i] <= 0.999) {
									Class[2]++;
								} else {
									if (F2[i] <= 0.735) {
										if (F6[i] <= 29.5) {
											Class[3]++;
										} else {
											if (F4[i] <= 0.098) {
												Class[4]++;
											} else {
												Class[3]++;
											}
										}
									} else {
										Class[2]++;
									}
								}
							} else {
								Class[2]++;
							}
						}
					} else {
						Class[3]++;
					}
				}
			}
		}

		if (F4[i] <= 0.068) {
			if (F2[i] <= 0.275) {
				if (F6[i] <= 47.5) {
					if (F7[i] <= 0.995) {
						if (F9[i] <= 0.545) {
							if (F1[i] <= 0.725) {
								if (F10[i] <= 10.85) {
									if (F6[i] <= 23.5) {
										Class[4]++;
									} else {
										Class[2]++;
									}
								} else {
									Class[2]++;
								}
							} else {
								Class[3]++;
							}
						} else {
							if (F0[i] <= 6.95) {
								if (F2[i] <= 0.015) {
									if (F7[i] <= 0.995) {
										Class[3]++;
									} else {
										if (F4[i] <= 0.057) {
											Class[2]++;
										} else {
											Class[1]++;
										}
									}
								} else {
									Class[3]++;
								}
							} else {
								if (F3[i] <= 1.85) {
									Class[4]++;
								} else {
									if (F10[i] <= 12.4) {
										Class[3]++;
									} else {
										Class[5]++;
									}
								}
							}
						}
					} else {
						if (F0[i] <= 7.3) {
							if (F9[i] <= 0.645) {
								if (F0[i] <= 6.65) {
									if (F5[i] <= 13.5) {
										if (F8[i] <= 3.56) {
											Class[2]++;
										} else {
											Class[1]++;
										}
									} else {
										Class[3]++;
									}
								} else {
									if (F5[i] <= 3.5) {
										Class[2]++;
									} else {
										Class[1]++;
									}
								}
							} else {
								if (F5[i] <= 6.0) {
									Class[2]++;
								} else {
									Class[3]++;
								}
							}
						} else {
							if (F0[i] <= 8.9) {
								if (F1[i] <= 0.875) {
									Class[2]++;
								} else {
									Class[3]++;
								}
							} else {
								Class[3]++;
							}
						}
					}
				} else {
					if (F10[i] <= 12.2) {
						if (F0[i] <= 5.3) {
							Class[1]++;
						} else {
							if (F3[i] <= 1.75) {
								Class[2]++;
							} else {
								if (F10[i] <= 10.275) {
									if (F6[i] <= 55.5) {
										Class[1]++;
									} else {
										Class[2]++;
									}
								} else {
									if (F5[i] <= 18.0) {
										Class[2]++;
									} else {
										Class[3]++;
									}
								}
							}
						}
					} else {
						if (F6[i] <= 88.5) {
							if (F0[i] <= 6.1) {
								Class[5]++;
							} else {
								Class[4]++;
							}
						} else {
							if (F9[i] <= 0.74) {
								Class[2]++;
							} else {
								Class[4]++;
							}
						}
					}
				}
			} else {
				if (F6[i] <= 10.5) {
					Class[4]++;
				} else {
					if (F5[i] <= 30.0) {
						if (F7[i] <= 0.997) {
							if (F3[i] <= 1.65) {
								Class[3]++;
							} else {
								if (F0[i] <= 6.85) {
									if (F8[i] <= 3.33) {
										Class[1]++;
									} else {
										Class[3]++;
									}
								} else {
									if (F4[i] <= 0.053) {
										Class[3]++;
									} else {
										if (F6[i] <= 28.5) {
											if (F5[i] <= 8.5) {
												if (F0[i] <= 8.85) {
													Class[3]++;
												} else {
													Class[4]++;
												}
											} else {
												Class[4]++;
											}
										} else {
											if (F7[i] <= 0.996) {
												if (F2[i] <= 0.325) {
													Class[5]++;
												} else {
													Class[3]++;
												}
											} else {
												if (F4[i] <= 0.055) {
													Class[4]++;
												} else {
													Class[2]++;
												}
											}
										}
									}
								}
							}
						} else {
							if (F0[i] <= 11.65) {
								if (F4[i] <= 0.055) {
									if (F0[i] <= 10.6) {
										Class[2]++;
									} else {
										Class[4]++;
									}
								} else {
									if (F3[i] <= 2.15) {
										Class[3]++;
									} else {
										if (F6[i] <= 28.0) {
											if (F6[i] <= 15.0) {
												Class[4]++;
											} else {
												Class[3]++;
											}
										} else {
											if (F6[i] <= 81.5) {
												Class[2]++;
											} else {
												Class[3]++;
											}
										}
									}
								}
							} else {
								if (F7[i] <= 0.998) {
									Class[4]++;
								} else {
									Class[2]++;
								}
							}
						}
					} else {
						if (F10[i] <= 9.95) {
							Class[2]++;
						} else {
							if (F1[i] <= 0.215) {
								if (F3[i] <= 1.8) {
									Class[3]++;
								} else {
									Class[2]++;
								}
							} else {
								if (F0[i] <= 9.0) {
									if (F6[i] <= 69.5) {
										if (F4[i] <= 0.061) {
											Class[3]++;
										} else {
											Class[4]++;
										}
									} else {
										Class[4]++;
									}
								} else {
									Class[3]++;
								}
							}
						}
					}
				}
			}
		} else {
			if (F10[i] <= 9.85) {
				if (F9[i] <= 0.575) {
					if (F7[i] <= 0.997) {
						if (F7[i] <= 0.997) {
							if (F3[i] <= 1.35) {
								Class[0]++;
							} else {
								if (F5[i] <= 11.5) {
									if (F4[i] <= 0.08) {
										if (F8[i] <= 3.24) {
											if (F1[i] <= 0.55) {
												Class[2]++;
											} else {
												Class[3]++;
											}
										} else {
											Class[2]++;
										}
									} else {
										if (F9[i] <= 0.495) {
											Class[1]++;
										} else {
											Class[2]++;
										}
									}
								} else {
									if (F3[i] <= 1.95) {
										if (F9[i] <= 0.535) {
											Class[2]++;
										} else {
											if (F2[i] <= 0.09) {
												Class[3]++;
											} else {
												Class[2]++;
											}
										}
									} else {
										if (F10[i] <= 9.75) {
											if (F1[i] <= 0.44) {
												Class[3]++;
											} else {
												Class[2]++;
											}
										} else {
											if (F5[i] <= 14.5) {
												Class[2]++;
											} else {
												Class[3]++;
											}
										}
									}
								}
							}
						} else {
							if (F8[i] <= 3.22) {
								Class[2]++;
							} else {
								if (F4[i] <= 0.074) {
									Class[4]++;
								} else {
									Class[3]++;
								}
							}
						}
					} else {
						if (F6[i] <= 57.5) {
							if (F1[i] <= 0.365) {
								Class[3]++;
							} else {
								if (F6[i] <= 42.0) {
									if (F0[i] <= 12.75) {
										Class[2]++;
									} else {
										Class[3]++;
									}
								} else {
									if (F10[i] <= 9.35) {
										Class[1]++;
									} else {
										if (F2[i] <= 0.2) {
											Class[3]++;
										} else {
											Class[2]++;
										}
									}
								}
							}
						} else {
							if (F3[i] <= 9.3) {
								Class[2]++;
							} else {
								Class[3]++;
							}
						}
					}
				} else {
					if (F3[i] <= 1.35) {
						if (F0[i] <= 8.35) {
							Class[1]++;
						} else {
							Class[2]++;
						}
					} else {
						if (F4[i] <= 0.098) {
							if (F8[i] <= 3.535) {
								if (F3[i] <= 2.05) {
									if (F5[i] <= 9.0) {
										Class[3]++;
									} else {
										if (F10[i] <= 9.75) {
											if (F10[i] <= 9.55) {
												if (F1[i] <= 0.64) {
													if (F7[i] <= 0.996) {
														Class[2]++;
													} else {
														if (F6[i] <= 81.5) {
															if (F7[i] <= 0.998) {
																if (F0[i] <= 6.5) {
																	if (F4[i] <= 0.083) {
																		Class[3]++;
																	} else {
																		Class[2]++;
																	}
																} else {
																	Class[3]++;
																}
															} else {
																Class[2]++;
															}
														} else {
															Class[2]++;
														}
													}
												} else {
													if (F3[i] <= 1.9) {
														Class[2]++;
													} else {
														Class[1]++;
													}
												}
											} else {
												Class[2]++;
											}
										} else {
											if (F0[i] <= 7.45) {
												if (F3[i] <= 1.85) {
													Class[3]++;
												} else {
													Class[2]++;
												}
											} else {
												Class[3]++;
											}
										}
									}
								} else {
									if (F9[i] <= 0.695) {
										if (F5[i] <= 9.0) {
											if (F6[i] <= 12.0) {
												Class[2]++;
											} else {
												Class[3]++;
											}
										} else {
											if (F4[i] <= 0.095) {
												if (F1[i] <= 0.585) {
													if (F9[i] <= 0.585) {
														Class[3]++;
													} else {
														if (F6[i] <= 89.0) {
															if (F1[i] <= 0.52) {
																if (F7[i] <= 0.998) {
																	Class[2]++;
																} else {
																	if (F1[i] <= 0.495) {
																		Class[3]++;
																	} else {
																		Class[4]++;
																	}
																}
															} else {
																Class[2]++;
															}
														} else {
															Class[2]++;
														}
													}
												} else {
													if (F9[i] <= 0.595) {
														Class[1]++;
													} else {
														Class[2]++;
													}
												}
											} else {
												if (F3[i] <= 2.8) {
													Class[2]++;
												} else {
													Class[3]++;
												}
											}
										}
									} else {
										if (F1[i] <= 0.235) {
											Class[4]++;
										} else {
											if (F3[i] <= 5.55) {
												if (F8[i] <= 3.045) {
													if (F1[i] <= 0.34) {
														Class[5]++;
													} else {
														Class[2]++;
													}
												} else {
													if (F7[i] <= 0.998) {
														if (F9[i] <= 0.72) {
															Class[3]++;
														} else {
															if (F4[i] <= 0.08) {
																Class[3]++;
															} else {
																Class[2]++;
															}
														}
													} else {
														Class[3]++;
													}
												}
											} else {
												Class[2]++;
											}
										}
									}
								}
							} else {
								if (F3[i] <= 2.85) {
									Class[2]++;
								} else {
									Class[3]++;
								}
							}
						} else {
							if (F3[i] <= 11.75) {
								if (F3[i] <= 2.05) {
									if (F0[i] <= 8.8) {
										if (F1[i] <= 0.59) {
											if (F5[i] <= 3.5) {
												Class[3]++;
											} else {
												if (F8[i] <= 3.305) {
													if (F8[i] <= 3.075) {
														Class[2]++;
													} else {
														if (F10[i] <= 9.2) {
															Class[3]++;
														} else {
															if (F7[i] <= 0.998) {
																Class[2]++;
															} else {
																Class[3]++;
															}
														}
													}
												} else {
													Class[3]++;
												}
											}
										} else {
											Class[2]++;
										}
									} else {
										if (F10[i] <= 9.35) {
											if (F4[i] <= 0.342) {
												Class[2]++;
											} else {
												Class[3]++;
											}
										} else {
											Class[3]++;
										}
									}
								} else {
									if (F9[i] <= 0.605) {
										if (F8[i] <= 3.26) {
											Class[2]++;
										} else {
											Class[3]++;
										}
									} else {
										Class[2]++;
									}
								}
							} else {
								Class[3]++;
							}
						}
					}
				}
			} else {
				if (F10[i] <= 11.45) {
					if (F1[i] <= 0.835) {
						if (F4[i] <= 0.072) {
							if (F2[i] <= 0.455) {
								if (F0[i] <= 6.95) {
									if (F2[i] <= 0.05) {
										if (F3[i] <= 2.0) {
											Class[1]++;
										} else {
											Class[2]++;
										}
									} else {
										Class[3]++;
									}
								} else {
									Class[2]++;
								}
							} else {
								Class[3]++;
							}
						} else {
							if (F2[i] <= 0.53) {
								if (F1[i] <= 0.595) {
									if (F10[i] <= 10.25) {
										if (F5[i] <= 33.5) {
											if (F2[i] <= 0.515) {
												if (F1[i] <= 0.565) {
													if (F9[i] <= 0.485) {
														Class[2]++;
													} else {
														if (F6[i] <= 16.0) {
															Class[1]++;
														} else {
															if (F9[i] <= 0.6) {
																if (F1[i] <= 0.435) {
																	Class[2]++;
																} else {
																	Class[3]++;
																}
															} else {
																Class[3]++;
															}
														}
													}
												} else {
													if (F1[i] <= 0.58) {
														Class[2]++;
													} else {
														Class[3]++;
													}
												}
											} else {
												Class[2]++;
											}
										} else {
											Class[0]++;
										}
									} else {
										if (F9[i] <= 0.545) {
											if (F2[i] <= 0.315) {
												if (F0[i] <= 6.15) {
													Class[3]++;
												} else {
													Class[2]++;
												}
											} else {
												if (F2[i] <= 0.465) {
													Class[3]++;
												} else {
													if (F5[i] <= 5.5) {
														Class[3]++;
													} else {
														Class[2]++;
													}
												}
											}
										} else {
											if (F6[i] <= 71.0) {
												if (F4[i] <= 0.097) {
													if (F3[i] <= 1.85) {
														if (F6[i] <= 31.0) {
															if (F5[i] <= 16.0) {
																if (F1[i] <= 0.405) {
																	Class[4]++;
																} else {
																	if (F2[i] <= 0.115) {
																		Class[4]++;
																	} else {
																		Class[3]++;
																	}
																}
															} else {
																Class[5]++;
															}
														} else {
															if (F10[i] <= 10.55) {
																Class[2]++;
															} else {
																if (F6[i] <= 61.5) {
																	Class[3]++;
																} else {
																	Class[2]++;
																}
															}
														}
													} else {
														if (F1[i] <= 0.265) {
															if (F8[i] <= 3.27) {
																if (F4[i] <= 0.077) {
																	Class[2]++;
																} else {
																	Class[4]++;
																}
															} else {
																Class[2]++;
															}
														} else {
															if (F5[i] <= 28.5) {
																if (F5[i] <= 23.0) {
																	Class[3]++;
																} else {
																	if (F2[i] <= 0.42) {
																		Class[3]++;
																	} else {
																		if (F10[i] <= 10.7) {
																			Class[3]++;
																		} else {
																			Class[4]++;
																		}
																	}
																}
															} else {
																if (F10[i] <= 10.45) {
																	Class[2]++;
																} else {
																	if (F0[i] <= 9.6) {
																		Class[3]++;
																	} else {
																		Class[2]++;
																	}
																}
															}
														}
													}
												} else {
													if (F9[i] <= 0.735) {
														if (F2[i] <= 0.235) {
															if (F4[i] <= 0.122) {
																Class[3]++;
															} else {
																Class[1]++;
															}
														} else {
															if (F7[i] <= 0.996) {
																Class[3]++;
															} else {
																Class[2]++;
															}
														}
													} else {
														Class[3]++;
													}
												}
											} else {
												if (F0[i] <= 7.9) {
													Class[2]++;
												} else {
													if (F10[i] <= 10.85) {
														Class[4]++;
													} else {
														Class[3]++;
													}
												}
											}
										}
									}
								} else {
									if (F6[i] <= 78.0) {
										if (F8[i] <= 3.145) {
											if (F6[i] <= 50.5) {
												Class[2]++;
											} else {
												Class[3]++;
											}
										} else {
											if (F4[i] <= 0.083) {
												if (F8[i] <= 3.51) {
													if (F2[i] <= 0.29) {
														if (F8[i] <= 3.295) {
															if (F8[i] <= 3.275) {
																Class[3]++;
															} else {
																Class[2]++;
															}
														} else {
															Class[3]++;
														}
													} else {
														Class[2]++;
													}
												} else {
													if (F0[i] <= 6.45) {
														Class[2]++;
													} else {
														Class[4]++;
													}
												}
											} else {
												if (F6[i] <= 62.0) {
													if (F6[i] <= 47.5) {
														if (F5[i] <= 14.5) {
															if (F6[i] <= 37.0) {
																if (F10[i] <= 10.6) {
																	Class[2]++;
																} else {
																	if (F5[i] <= 7.5) {
																		if (F10[i] <= 10.85) {
																			Class[3]++;
																		} else {
																			Class[2]++;
																		}
																	} else {
																		Class[3]++;
																	}
																}
															} else {
																Class[3]++;
															}
														} else {
															if (F3[i] <= 2.9) {
																Class[3]++;
															} else {
																Class[2]++;
															}
														}
													} else {
														if (F2[i] <= 0.355) {
															Class[2]++;
														} else {
															Class[1]++;
														}
													}
												} else {
													Class[3]++;
												}
											}
										}
									} else {
										Class[2]++;
									}
								}
							} else {
								if (F6[i] <= 26.5) {
									if (F2[i] <= 0.64) {
										if (F9[i] <= 0.73) {
											if (F8[i] <= 3.385) {
												Class[3]++;
											} else {
												Class[2]++;
											}
										} else {
											Class[4]++;
										}
									} else {
										Class[2]++;
									}
								} else {
									if (F2[i] <= 0.595) {
										if (F5[i] <= 30.0) {
											if (F8[i] <= 3.085) {
												Class[4]++;
											} else {
												Class[3]++;
											}
										} else {
											Class[4]++;
										}
									} else {
										if (F4[i] <= 0.094) {
											if (F2[i] <= 0.655) {
												if (F8[i] <= 3.03) {
													Class[3]++;
												} else {
													Class[2]++;
												}
											} else {
												Class[4]++;
											}
										} else {
											Class[4]++;
										}
									}
								}
							}
						}
					} else {
						if (F6[i] <= 28.0) {
							if (F10[i] <= 11.1) {
								if (F4[i] <= 0.075) {
									Class[3]++;
								} else {
									if (F6[i] <= 19.5) {
										if (F7[i] <= 0.996) {
											Class[2]++;
										} else {
											if (F6[i] <= 13.5) {
												if (F0[i] <= 7.7) {
													Class[1]++;
												} else {
													Class[0]++;
												}
											} else {
												Class[0]++;
											}
										}
									} else {
										Class[1]++;
									}
								}
							} else {
								Class[1]++;
							}
						} else {
							if (F4[i] <= 0.078) {
								Class[3]++;
							} else {
								Class[2]++;
							}
						}
					}
				} else {
					if (F8[i] <= 3.375) {
						if (F3[i] <= 1.95) {
							if (F9[i] <= 0.71) {
								Class[5]++;
							} else {
								Class[3]++;
							}
						} else {
							if (F2[i] <= 0.315) {
								Class[3]++;
							} else {
								if (F6[i] <= 9.5) {
									Class[3]++;
								} else {
									if (F0[i] <= 10.7) {
										if (F4[i] <= 0.124) {
											if (F5[i] <= 27.5) {
												if (F9[i] <= 0.715) {
													Class[4]++;
												} else {
													if (F6[i] <= 18.0) {
														if (F0[i] <= 9.55) {
															Class[5]++;
														} else {
															Class[3]++;
														}
													} else {
														if (F0[i] <= 8.4) {
															if (F8[i] <= 3.345) {
																Class[4]++;
															} else {
																Class[5]++;
															}
														} else {
															Class[4]++;
														}
													}
												}
											} else {
												if (F6[i] <= 47.0) {
													Class[3]++;
												} else {
													if (F6[i] <= 53.5) {
														Class[4]++;
													} else {
														if (F2[i] <= 0.39) {
															Class[4]++;
														} else {
															Class[3]++;
														}
													}
												}
											}
										} else {
											Class[3]++;
										}
									} else {
										if (F6[i] <= 59.0) {
											if (F9[i] <= 0.685) {
												Class[3]++;
											} else {
												if (F9[i] <= 0.84) {
													Class[5]++;
												} else {
													Class[3]++;
												}
											}
										} else {
											Class[2]++;
										}
									}
								}
							}
						}
					} else {
						if (F4[i] <= 0.084) {
							if (F4[i] <= 0.071) {
								if (F9[i] <= 0.67) {
									Class[3]++;
								} else {
									Class[4]++;
								}
							} else {
								Class[3]++;
							}
						} else {
							if (F6[i] <= 35.5) {
								if (F5[i] <= 6.0) {
									if (F10[i] <= 12.15) {
										Class[1]++;
									} else {
										Class[4]++;
									}
								} else {
									Class[4]++;
								}
							} else {
								Class[3]++;
							}
						}
					}
				}
			}
		}

		if (F9[i] <= 0.545) {
			if (F7[i] <= 0.995) {
				if (F2[i] <= 0.275) {
					if (F7[i] <= 0.993) {
						Class[3]++;
					} else {
						if (F7[i] <= 0.995) {
							if (F1[i] <= 0.837) {
								if (F6[i] <= 10.0) {
									Class[1]++;
								} else {
									Class[2]++;
								}
							} else {
								if (F7[i] <= 0.994) {
									Class[3]++;
								} else {
									Class[1]++;
								}
							}
						} else {
							if (F1[i] <= 0.743) {
								if (F2[i] <= 0.23) {
									Class[3]++;
								} else {
									Class[2]++;
								}
							} else {
								if (F10[i] <= 11.15) {
									Class[0]++;
								} else {
									Class[1]++;
								}
							}
						}
					}
				} else {
					if (F3[i] <= 2.8) {
						if (F5[i] <= 5.5) {
							if (F2[i] <= 0.46) {
								Class[4]++;
							} else {
								Class[3]++;
							}
						} else {
							Class[3]++;
						}
					} else {
						Class[4]++;
					}
				}
			} else {
				if (F4[i] <= 0.076) {
					if (F4[i] <= 0.071) {
						if (F9[i] <= 0.435) {
							Class[3]++;
						} else {
							if (F6[i] <= 140.5) {
								if (F9[i] <= 0.51) {
									Class[2]++;
								} else {
									if (F6[i] <= 34.5) {
										if (F6[i] <= 23.0) {
											Class[2]++;
										} else {
											Class[3]++;
										}
									} else {
										Class[2]++;
									}
								}
							} else {
								Class[3]++;
							}
						}
					} else {
						if (F9[i] <= 0.535) {
							if (F7[i] <= 0.999) {
								if (F0[i] <= 8.5) {
									if (F7[i] <= 0.995) {
										Class[3]++;
									} else {
										Class[2]++;
									}
								} else {
									if (F1[i] <= 0.352) {
										Class[3]++;
									} else {
										if (F1[i] <= 0.682) {
											Class[4]++;
										} else {
											Class[1]++;
										}
									}
								}
							} else {
								Class[3]++;
							}
						} else {
							Class[3]++;
						}
					}
				} else {
					if (F1[i] <= 0.455) {
						if (F4[i] <= 0.082) {
							if (F7[i] <= 0.996) {
								Class[3]++;
							} else {
								if (F0[i] <= 7.65) {
									Class[2]++;
								} else {
									if (F9[i] <= 0.525) {
										Class[3]++;
									} else {
										Class[2]++;
									}
								}
							}
						} else {
							if (F2[i] <= 0.645) {
								if (F3[i] <= 2.25) {
									if (F9[i] <= 0.495) {
										Class[3]++;
									} else {
										Class[2]++;
									}
								} else {
									Class[2]++;
								}
							} else {
								Class[3]++;
							}
						}
					} else {
						if (F0[i] <= 7.95) {
							if (F8[i] <= 3.57) {
								if (F3[i] <= 4.925) {
									if (F5[i] <= 22.5) {
										Class[2]++;
									} else {
										if (F7[i] <= 0.997) {
											Class[2]++;
										} else {
											if (F6[i] <= 69.5) {
												Class[2]++;
											} else {
												Class[3]++;
											}
										}
									}
								} else {
									if (F3[i] <= 5.3) {
										Class[3]++;
									} else {
										Class[2]++;
									}
								}
							} else {
								Class[1]++;
							}
						} else {
							if (F10[i] <= 9.45) {
								if (F2[i] <= 0.295) {
									Class[2]++;
								} else {
									if (F3[i] <= 2.5) {
										Class[2]++;
									} else {
										Class[1]++;
									}
								}
							} else {
								if (F2[i] <= 0.315) {
									if (F7[i] <= 0.997) {
										if (F1[i] <= 0.893) {
											Class[2]++;
										} else {
											if (F1[i] <= 1.123) {
												Class[1]++;
											} else {
												Class[2]++;
											}
										}
									} else {
										if (F4[i] <= 0.094) {
											if (F3[i] <= 2.225) {
												if (F6[i] <= 28.0) {
													Class[1]++;
												} else {
													Class[3]++;
												}
											} else {
												if (F9[i] <= 0.47) {
													Class[1]++;
												} else {
													if (F3[i] <= 2.8) {
														Class[2]++;
													} else {
														Class[3]++;
													}
												}
											}
										} else {
											Class[2]++;
										}
									}
								} else {
									Class[3]++;
								}
							}
						}
					}
				}
			}
		} else {
			if (F10[i] <= 10.55) {
				if (F0[i] <= 9.95) {
					if (F1[i] <= 0.37) {
						if (F5[i] <= 10.0) {
							Class[2]++;
						} else {
							if (F2[i] <= 0.28) {
								if (F1[i] <= 0.315) {
									Class[4]++;
								} else {
									Class[2]++;
								}
							} else {
								if (F10[i] <= 10.45) {
									if (F1[i] <= 0.255) {
										if (F9[i] <= 0.88) {
											Class[4]++;
										} else {
											Class[3]++;
										}
									} else {
										Class[3]++;
									}
								} else {
									Class[4]++;
								}
							}
						}
					} else {
						if (F4[i] <= 0.098) {
							if (F9[i] <= 0.805) {
								if (F2[i] <= 0.005) {
									if (F8[i] <= 3.475) {
										if (F6[i] <= 34.5) {
											Class[3]++;
										} else {
											if (F8[i] <= 3.42) {
												Class[3]++;
											} else {
												Class[2]++;
											}
										}
									} else {
										if (F0[i] <= 6.5) {
											Class[1]++;
										} else {
											Class[2]++;
										}
									}
								} else {
									if (F6[i] <= 91.5) {
										if (F2[i] <= 0.43) {
											if (F4[i] <= 0.095) {
												if (F1[i] <= 0.605) {
													if (F5[i] <= 31.5) {
														if (F10[i] <= 9.45) {
															if (F8[i] <= 3.305) {
																if (F2[i] <= 0.255) {
																	Class[3]++;
																} else {
																	Class[2]++;
																}
															} else {
																Class[2]++;
															}
														} else {
															if (F6[i] <= 20.0) {
																if (F7[i] <= 0.997) {
																	Class[4]++;
																} else {
																	Class[2]++;
																}
															} else {
																if (F7[i] <= 0.999) {
																	if (F4[i] <= 0.069) {
																		if (F9[i] <= 0.645) {
																			if (F1[i] <= 0.535) {
																				Class[2]++;
																			} else {
																				Class[3]++;
																			}
																		} else {
																			if (F2[i] <= 0.145) {
																				Class[3]++;
																			} else {
																				Class[4]++;
																			}
																		}
																	} else {
																		if (F5[i] <= 7.5) {
																			Class[2]++;
																		} else {
																			if (F2[i] <= 0.255) {
																				if (F3[i] <= 1.95) {
																					if (F0[i] <= 7.2) {
																						Class[3]++;
																					} else {
																						Class[4]++;
																					}
																				} else {
																					if (F6[i] <= 47.5) {
																						if (F3[i] <= 2.05) {
																							if (F0[i] <= 6.35) {
																								Class[3]++;
																							} else {
																								Class[2]++;
																							}
																						} else {
																							if (F9[i] <= 0.585) {
																								if (F10[i] <= 9.75) {
																									Class[3]++;
																								} else {
																									Class[2]++;
																								}
																							} else {
																								Class[3]++;
																							}
																						}
																					} else {
																						if (F3[i] <= 2.5) {
																							Class[2]++;
																						} else {
																							if (F6[i] <= 55.5) {
																								Class[2]++;
																							} else {
																								Class[3]++;
																							}
																						}
																					}
																				}
																			} else {
																				if (F2[i] <= 0.315) {
																					Class[3]++;
																				} else {
																					if (F6[i] <= 48.0) {
																						Class[3]++;
																					} else {
																						Class[2]++;
																					}
																				}
																			}
																		}
																	}
																} else {
																	Class[4]++;
																}
															}
														}
													} else {
														Class[2]++;
													}
												} else {
													if (F9[i] <= 0.555) {
														if (F8[i] <= 3.3) {
															Class[2]++;
														} else {
															if (F6[i] <= 46.5) {
																if (F2[i] <= 0.165) {
																	Class[3]++;
																} else {
																	Class[2]++;
																}
															} else {
																Class[0]++;
															}
														}
													} else {
														if (F3[i] <= 2.65) {
															if (F5[i] <= 17.5) {
																if (F7[i] <= 0.996) {
																	if (F8[i] <= 3.39) {
																		Class[3]++;
																	} else {
																		Class[2]++;
																	}
																} else {
																	if (F4[i] <= 0.09) {
																		if (F1[i] <= 0.66) {
																			if (F3[i] <= 1.85) {
																				Class[2]++;
																			} else {
																				if (F0[i] <= 7.2) {
																					Class[3]++;
																				} else {
																					Class[2]++;
																				}
																			}
																		} else {
																			Class[2]++;
																		}
																	} else {
																		if (F8[i] <= 3.47) {
																			if (F0[i] <= 8.3) {
																				Class[3]++;
																			} else {
																				if (F8[i] <= 3.23) {
																					Class[1]++;
																				} else {
																					Class[2]++;
																				}
																			}
																		} else {
																			Class[2]++;
																		}
																	}
																}
															} else {
																Class[2]++;
															}
														} else {
															if (F6[i] <= 29.5) {
																Class[2]++;
															} else {
																if (F7[i] <= 0.999) {
																	Class[3]++;
																} else {
																	Class[2]++;
																}
															}
														}
													}
												}
											} else {
												Class[3]++;
											}
										} else {
											Class[2]++;
										}
									} else {
										Class[2]++;
									}
								}
							} else {
								if (F6[i] <= 17.5) {
									Class[4]++;
								} else {
									if (F3[i] <= 1.35) {
										Class[1]++;
									} else {
										if (F9[i] <= 1.08) {
											Class[3]++;
										} else {
											Class[2]++;
										}
									}
								}
							}
						} else {
							if (F8[i] <= 2.915) {
								if (F3[i] <= 2.8) {
									Class[3]++;
								} else {
									Class[1]++;
								}
							} else {
								if (F3[i] <= 2.35) {
									if (F7[i] <= 0.998) {
										if (F6[i] <= 34.5) {
											if (F2[i] <= 0.485) {
												Class[2]++;
											} else {
												Class[3]++;
											}
										} else {
											Class[2]++;
										}
									} else {
										Class[3]++;
									}
								} else {
									if (F4[i] <= 0.174) {
										if (F3[i] <= 2.55) {
											Class[3]++;
										} else {
											if (F10[i] <= 10.0) {
												Class[2]++;
											} else {
												if (F2[i] <= 0.115) {
													Class[2]++;
												} else {
													Class[3]++;
												}
											}
										}
									} else {
										Class[3]++;
									}
								}
							}
						}
					}
				} else {
					if (F5[i] <= 28.5) {
						if (F8[i] <= 3.075) {
							if (F1[i] <= 0.3) {
								Class[4]++;
							} else {
								if (F1[i] <= 0.35) {
									if (F10[i] <= 9.65) {
										Class[3]++;
									} else {
										Class[5]++;
									}
								} else {
									if (F5[i] <= 21.5) {
										if (F7[i] <= 1.001) {
											if (F7[i] <= 0.997) {
												Class[3]++;
											} else {
												if (F10[i] <= 10.25) {
													if (F1[i] <= 0.41) {
														if (F7[i] <= 0.998) {
															Class[3]++;
														} else {
															Class[2]++;
														}
													} else {
														Class[2]++;
													}
												} else {
													if (F1[i] <= 0.51) {
														Class[3]++;
													} else {
														Class[1]++;
													}
												}
											}
										} else {
											Class[4]++;
										}
									} else {
										Class[4]++;
									}
								}
							}
						} else {
							if (F7[i] <= 0.997) {
								Class[4]++;
							} else {
								if (F4[i] <= 0.14) {
									if (F1[i] <= 0.385) {
										if (F10[i] <= 10.45) {
											if (F9[i] <= 0.615) {
												if (F6[i] <= 51.0) {
													Class[2]++;
												} else {
													Class[3]++;
												}
											} else {
												if (F2[i] <= 0.42) {
													Class[2]++;
												} else {
													if (F2[i] <= 0.565) {
														Class[3]++;
													} else {
														if (F10[i] <= 9.65) {
															Class[3]++;
														} else {
															Class[2]++;
														}
													}
												}
											}
										} else {
											Class[4]++;
										}
									} else {
										Class[3]++;
									}
								} else {
									if (F6[i] <= 16.0) {
										Class[3]++;
									} else {
										Class[2]++;
									}
								}
							}
						}
					} else {
						if (F7[i] <= 0.999) {
							Class[0]++;
						} else {
							Class[2]++;
						}
					}
				}
			} else {
				if (F9[i] <= 0.625) {
					if (F2[i] <= 0.61) {
						if (F6[i] <= 10.5) {
							if (F1[i] <= 0.375) {
								Class[4]++;
							} else {
								if (F8[i] <= 3.245) {
									Class[4]++;
								} else {
									if (F2[i] <= 0.165) {
										Class[3]++;
									} else {
										if (F7[i] <= 0.996) {
											Class[1]++;
										} else {
											Class[3]++;
										}
									}
								}
							}
						} else {
							if (F5[i] <= 6.5) {
								if (F4[i] <= 0.103) {
									if (F1[i] <= 0.52) {
										if (F1[i] <= 0.355) {
											if (F0[i] <= 7.15) {
												Class[1]++;
											} else {
												Class[4]++;
											}
										} else {
											Class[3]++;
										}
									} else {
										if (F9[i] <= 0.595) {
											if (F10[i] <= 10.65) {
												Class[3]++;
											} else {
												if (F3[i] <= 3.6) {
													Class[2]++;
												} else {
													Class[1]++;
												}
											}
										} else {
											if (F0[i] <= 7.65) {
												Class[1]++;
											} else {
												Class[3]++;
											}
										}
									}
								} else {
									Class[3]++;
								}
							} else {
								if (F1[i] <= 0.535) {
									if (F10[i] <= 11.0) {
										if (F9[i] <= 0.585) {
											if (F4[i] <= 0.069) {
												Class[1]++;
											} else {
												Class[2]++;
											}
										} else {
											Class[3]++;
										}
									} else {
										Class[3]++;
									}
								} else {
									if (F6[i] <= 44.5) {
										if (F2[i] <= 0.13) {
											if (F3[i] <= 3.4) {
												if (F8[i] <= 3.57) {
													Class[3]++;
												} else {
													Class[1]++;
												}
											} else {
												Class[1]++;
											}
										} else {
											if (F10[i] <= 11.35) {
												Class[2]++;
											} else {
												Class[4]++;
											}
										}
									} else {
										if (F9[i] <= 0.565) {
											Class[4]++;
										} else {
											if (F5[i] <= 24.0) {
												Class[3]++;
											} else {
												Class[2]++;
											}
										}
									}
								}
							}
						}
					} else {
						if (F5[i] <= 16.0) {
							Class[2]++;
						} else {
							Class[3]++;
						}
					}
				} else {
					if (F2[i] <= 0.505) {
						if (F7[i] <= 0.994) {
							if (F7[i] <= 0.992) {
								if (F6[i] <= 55.0) {
									Class[5]++;
								} else {
									if (F7[i] <= 0.991) {
										if (F6[i] <= 83.5) {
											Class[3]++;
										} else {
											Class[5]++;
										}
									} else {
										Class[3]++;
									}
								}
							} else {
								if (F2[i] <= 0.005) {
									Class[2]++;
								} else {
									if (F3[i] <= 1.55) {
										if (F10[i] <= 12.95) {
											Class[5]++;
										} else {
											Class[4]++;
										}
									} else {
										if (F8[i] <= 3.6) {
											Class[4]++;
										} else {
											Class[2]++;
										}
									}
								}
							}
						} else {
							if (F10[i] <= 11.55) {
								if (F7[i] <= 0.996) {
									if (F8[i] <= 3.285) {
										if (F5[i] <= 17.5) {
											if (F9[i] <= 0.78) {
												Class[5]++;
											} else {
												Class[2]++;
											}
										} else {
											if (F10[i] <= 11.2) {
												Class[3]++;
											} else {
												Class[4]++;
											}
										}
									} else {
										if (F4[i] <= 0.079) {
											Class[3]++;
										} else {
											if (F1[i] <= 0.33) {
												Class[2]++;
											} else {
												if (F10[i] <= 11.0) {
													if (F1[i] <= 0.535) {
														Class[3]++;
													} else {
														Class[2]++;
													}
												} else {
													Class[3]++;
												}
											}
										}
									}
								} else {
									if (F0[i] <= 7.85) {
										if (F7[i] <= 0.997) {
											if (F6[i] <= 33.0) {
												Class[1]++;
											} else {
												if (F2[i] <= 0.405) {
													Class[2]++;
												} else {
													if (F0[i] <= 7.15) {
														Class[3]++;
													} else {
														Class[2]++;
													}
												}
											}
										} else {
											if (F2[i] <= 0.095) {
												Class[1]++;
											} else {
												Class[4]++;
											}
										}
									} else {
										if (F4[i] <= 0.094) {
											if (F8[i] <= 3.09) {
												if (F2[i] <= 0.365) {
													Class[3]++;
												} else {
													Class[2]++;
												}
											} else {
												if (F4[i] <= 0.058) {
													if (F8[i] <= 3.24) {
														Class[4]++;
													} else {
														Class[2]++;
													}
												} else {
													if (F9[i] <= 0.715) {
														if (F5[i] <= 22.5) {
															Class[4]++;
														} else {
															Class[3]++;
														}
													} else {
														if (F7[i] <= 0.996) {
															Class[4]++;
														} else {
															if (F4[i] <= 0.091) {
																if (F7[i] <= 0.996) {
																	if (F8[i] <= 3.37) {
																		Class[3]++;
																	} else {
																		Class[4]++;
																	}
																} else {
																	if (F9[i] <= 0.98) {
																		Class[3]++;
																	} else {
																		if (F9[i] <= 1.03) {
																			Class[4]++;
																		} else {
																			Class[3]++;
																		}
																	}
																}
															} else {
																Class[4]++;
															}
														}
													}
												}
											}
										} else {
											if (F9[i] <= 0.75) {
												if (F2[i] <= 0.405) {
													Class[2]++;
												} else {
													if (F10[i] <= 11.0) {
														Class[3]++;
													} else {
														Class[2]++;
													}
												}
											} else {
												if (F7[i] <= 0.998) {
													Class[2]++;
												} else {
													Class[3]++;
												}
											}
										}
									}
								}
							} else {
								if (F3[i] <= 2.15) {
									if (F4[i] <= 0.07) {
										if (F3[i] <= 1.85) {
											Class[5]++;
										} else {
											if (F2[i] <= 0.405) {
												Class[4]++;
											} else {
												Class[3]++;
											}
										}
									} else {
										Class[3]++;
									}
								} else {
									if (F10[i] <= 13.4) {
										if (F1[i] <= 0.235) {
											Class[3]++;
										} else {
											if (F8[i] <= 3.39) {
												if (F8[i] <= 3.225) {
													if (F7[i] <= 0.999) {
														Class[3]++;
													} else {
														Class[4]++;
													}
												} else {
													if (F9[i] <= 0.7) {
														if (F9[i] <= 0.665) {
															Class[4]++;
														} else {
															Class[3]++;
														}
													} else {
														Class[4]++;
													}
												}
											} else {
												if (F3[i] <= 2.75) {
													if (F6[i] <= 26.5) {
														Class[4]++;
													} else {
														if (F9[i] <= 0.68) {
															Class[3]++;
														} else {
															if (F0[i] <= 8.35) {
																Class[5]++;
															} else {
																Class[2]++;
															}
														}
													}
												} else {
													Class[3]++;
												}
											}
										}
									} else {
										Class[3]++;
									}
								}
							}
						}
					} else {
						if (F7[i] <= 1.001) {
							if (F1[i] <= 0.605) {
								if (F8[i] <= 3.37) {
									if (F9[i] <= 0.64) {
										Class[5]++;
									} else {
										if (F10[i] <= 11.55) {
											if (F10[i] <= 10.85) {
												if (F7[i] <= 0.998) {
													Class[2]++;
												} else {
													Class[4]++;
												}
											} else {
												if (F3[i] <= 2.9) {
													if (F2[i] <= 0.7) {
														Class[3]++;
													} else {
														Class[4]++;
													}
												} else {
													Class[2]++;
												}
											}
										} else {
											if (F8[i] <= 2.995) {
												Class[2]++;
											} else {
												if (F0[i] <= 9.5) {
													if (F10[i] <= 11.75) {
														Class[5]++;
													} else {
														Class[4]++;
													}
												} else {
													Class[4]++;
												}
											}
										}
									}
								} else {
									if (F0[i] <= 7.9) {
										Class[3]++;
									} else {
										Class[2]++;
									}
								}
							} else {
								Class[5]++;
							}
						} else {
							Class[3]++;
						}
					}
				}
			}
		}

		if (F1[i] <= 0.363) {
			if (F6[i] <= 75.5) {
				if (F10[i] <= 10.45) {
					if (F10[i] <= 9.75) {
						if (F9[i] <= 0.585) {
							Class[2]++;
						} else {
							if (F5[i] <= 10.5) {
								if (F4[i] <= 0.076) {
									if (F1[i] <= 0.235) {
										Class[4]++;
									} else {
										Class[3]++;
									}
								} else {
									if (F0[i] <= 10.95) {
										Class[2]++;
									} else {
										Class[3]++;
									}
								}
							} else {
								if (F7[i] <= 0.996) {
									Class[2]++;
								} else {
									Class[3]++;
								}
							}
						}
					} else {
						if (F8[i] <= 3.345) {
							if (F2[i] <= 0.66) {
								if (F5[i] <= 3.5) {
									Class[5]++;
								} else {
									if (F3[i] <= 1.85) {
										if (F0[i] <= 11.45) {
											Class[3]++;
										} else {
											Class[4]++;
										}
									} else {
										Class[3]++;
									}
								}
							} else {
								Class[5]++;
							}
						} else {
							if (F6[i] <= 54.5) {
								if (F5[i] <= 10.0) {
									Class[2]++;
								} else {
									if (F9[i] <= 0.62) {
										Class[1]++;
									} else {
										if (F8[i] <= 3.39) {
											Class[3]++;
										} else {
											Class[4]++;
										}
									}
								}
							} else {
								if (F9[i] <= 0.82) {
									Class[3]++;
								} else {
									if (F0[i] <= 9.25) {
										Class[4]++;
									} else {
										Class[3]++;
									}
								}
							}
						}
					}
				} else {
					if (F9[i] <= 0.545) {
						Class[3]++;
					} else {
						if (F6[i] <= 67.5) {
							if (F8[i] <= 3.335) {
								if (F1[i] <= 0.275) {
									if (F4[i] <= 0.082) {
										if (F3[i] <= 3.55) {
											if (F4[i] <= 0.071) {
												if (F10[i] <= 11.7) {
													Class[3]++;
												} else {
													Class[4]++;
												}
											} else {
												Class[4]++;
											}
										} else {
											Class[3]++;
										}
									} else {
										if (F4[i] <= 0.09) {
											Class[2]++;
										} else {
											if (F7[i] <= 0.997) {
												Class[3]++;
											} else {
												Class[2]++;
											}
										}
									}
								} else {
									if (F1[i] <= 0.345) {
										if (F2[i] <= 0.485) {
											if (F7[i] <= 0.995) {
												Class[4]++;
											} else {
												if (F4[i] <= 0.077) {
													Class[4]++;
												} else {
													Class[3]++;
												}
											}
										} else {
											if (F8[i] <= 3.23) {
												if (F1[i] <= 0.315) {
													if (F7[i] <= 0.997) {
														if (F4[i] <= 0.07) {
															Class[4]++;
														} else {
															Class[5]++;
														}
													} else {
														Class[4]++;
													}
												} else {
													Class[2]++;
												}
											} else {
												if (F3[i] <= 2.65) {
													if (F4[i] <= 0.061) {
														Class[4]++;
													} else {
														Class[3]++;
													}
												} else {
													Class[4]++;
												}
											}
										}
									} else {
										if (F8[i] <= 3.265) {
											if (F3[i] <= 1.65) {
												Class[4]++;
											} else {
												if (F9[i] <= 0.745) {
													Class[5]++;
												} else {
													Class[2]++;
												}
											}
										} else {
											Class[3]++;
										}
									}
								}
							} else {
								if (F7[i] <= 0.998) {
									if (F3[i] <= 1.75) {
										Class[3]++;
									} else {
										if (F5[i] <= 6.0) {
											Class[4]++;
										} else {
											if (F8[i] <= 3.395) {
												Class[3]++;
											} else {
												if (F5[i] <= 25.5) {
													if (F0[i] <= 7.15) {
														if (F10[i] <= 10.8) {
															Class[2]++;
														} else {
															Class[3]++;
														}
													} else {
														Class[4]++;
													}
												} else {
													Class[3]++;
												}
											}
										}
									}
								} else {
									Class[2]++;
								}
							}
						} else {
							if (F5[i] <= 35.0) {
								Class[2]++;
							} else {
								Class[5]++;
							}
						}
					}
				}
			} else {
				if (F1[i] <= 0.305) {
					if (F3[i] <= 1.75) {
						if (F4[i] <= 0.047) {
							Class[2]++;
						} else {
							Class[3]++;
						}
					} else {
						Class[4]++;
					}
				} else {
					Class[2]++;
				}
			}
		} else {
			if (F9[i] <= 0.555) {
				if (F2[i] <= 0.125) {
					if (F8[i] <= 3.275) {
						Class[2]++;
					} else {
						if (F7[i] <= 0.996) {
							if (F10[i] <= 12.1) {
								if (F5[i] <= 29.0) {
									if (F4[i] <= 0.074) {
										if (F7[i] <= 0.994) {
											Class[2]++;
										} else {
											if (F10[i] <= 10.2) {
												if (F4[i] <= 0.061) {
													Class[2]++;
												} else {
													if (F3[i] <= 1.4) {
														Class[4]++;
													} else {
														Class[1]++;
													}
												}
											} else {
												Class[1]++;
											}
										}
									} else {
										if (F2[i] <= 0.005) {
											if (F10[i] <= 11.05) {
												if (F8[i] <= 3.365) {
													Class[0]++;
												} else {
													if (F10[i] <= 10.85) {
														Class[2]++;
													} else {
														Class[0]++;
													}
												}
											} else {
												if (F5[i] <= 7.5) {
													Class[3]++;
												} else {
													if (F4[i] <= 0.087) {
														Class[1]++;
													} else {
														Class[4]++;
													}
												}
											}
										} else {
											if (F1[i] <= 0.755) {
												if (F5[i] <= 21.5) {
													Class[3]++;
												} else {
													Class[2]++;
												}
											} else {
												Class[1]++;
											}
										}
									}
								} else {
									Class[3]++;
								}
							} else {
								Class[3]++;
							}
						} else {
							if (F9[i] <= 0.545) {
								if (F2[i] <= 0.115) {
									if (F10[i] <= 9.55) {
										Class[2]++;
									} else {
										if (F0[i] <= 7.35) {
											if (F1[i] <= 0.805) {
												if (F7[i] <= 0.997) {
													if (F8[i] <= 3.505) {
														Class[2]++;
													} else {
														Class[3]++;
													}
												} else {
													Class[2]++;
												}
											} else {
												if (F2[i] <= 0.025) {
													Class[2]++;
												} else {
													Class[0]++;
												}
											}
										} else {
											if (F7[i] <= 0.996) {
												Class[3]++;
											} else {
												if (F8[i] <= 3.35) {
													Class[1]++;
												} else {
													if (F4[i] <= 0.082) {
														if (F2[i] <= 0.005) {
															Class[1]++;
														} else {
															Class[2]++;
														}
													} else {
														Class[2]++;
													}
												}
											}
										}
									}
								} else {
									Class[3]++;
								}
							} else {
								if (F3[i] <= 2.2) {
									Class[0]++;
								} else {
									if (F8[i] <= 3.305) {
										Class[2]++;
									} else {
										if (F0[i] <= 7.5) {
											if (F4[i] <= 0.09) {
												Class[2]++;
											} else {
												Class[3]++;
											}
										} else {
											Class[3]++;
										}
									}
								}
							}
						}
					}
				} else {
					if (F5[i] <= 4.5) {
						Class[3]++;
					} else {
						if (F10[i] <= 11.75) {
							if (F5[i] <= 12.5) {
								if (F1[i] <= 0.593) {
									if (F10[i] <= 9.125) {
										Class[1]++;
									} else {
										if (F3[i] <= 3.2) {
											if (F8[i] <= 3.335) {
												if (F1[i] <= 0.58) {
													if (F5[i] <= 9.5) {
														Class[2]++;
													} else {
														if (F4[i] <= 0.07) {
															Class[3]++;
														} else {
															Class[2]++;
														}
													}
												} else {
													Class[3]++;
												}
											} else {
												if (F9[i] <= 0.505) {
													Class[2]++;
												} else {
													Class[1]++;
												}
											}
										} else {
											Class[3]++;
										}
									}
								} else {
									Class[2]++;
								}
							} else {
								if (F5[i] <= 16.5) {
									if (F4[i] <= 0.082) {
										if (F2[i] <= 0.21) {
											if (F10[i] <= 9.75) {
												Class[3]++;
											} else {
												Class[2]++;
											}
										} else {
											Class[3]++;
										}
									} else {
										if (F6[i] <= 34.0) {
											if (F10[i] <= 9.8) {
												Class[2]++;
											} else {
												Class[3]++;
											}
										} else {
											Class[2]++;
										}
									}
								} else {
									if (F4[i] <= 0.091) {
										if (F9[i] <= 0.535) {
											if (F1[i] <= 0.55) {
												if (F9[i] <= 0.47) {
													Class[3]++;
												} else {
													Class[2]++;
												}
											} else {
												Class[2]++;
											}
										} else {
											if (F0[i] <= 8.1) {
												if (F5[i] <= 25.0) {
													Class[3]++;
												} else {
													Class[2]++;
												}
											} else {
												Class[2]++;
											}
										}
									} else {
										if (F8[i] <= 3.15) {
											Class[2]++;
										} else {
											if (F3[i] <= 2.9) {
												Class[2]++;
											} else {
												Class[3]++;
											}
										}
									}
								}
							}
						} else {
							if (F6[i] <= 12.5) {
								Class[3]++;
							} else {
								Class[4]++;
							}
						}
					}
				}
			} else {
				if (F8[i] <= 3.265) {
					if (F10[i] <= 11.45) {
						if (F8[i] <= 2.805) {
							Class[1]++;
						} else {
							if (F7[i] <= 1.0) {
								if (F6[i] <= 36.0) {
									if (F4[i] <= 0.081) {
										if (F8[i] <= 3.075) {
											if (F3[i] <= 1.7) {
												Class[1]++;
											} else {
												Class[2]++;
											}
										} else {
											if (F1[i] <= 0.455) {
												if (F9[i] <= 0.75) {
													if (F8[i] <= 3.255) {
														Class[3]++;
													} else {
														Class[2]++;
													}
												} else {
													Class[4]++;
												}
											} else {
												if (F8[i] <= 3.13) {
													if (F3[i] <= 2.45) {
														Class[2]++;
													} else {
														Class[3]++;
													}
												} else {
													Class[2]++;
												}
											}
										}
									} else {
										if (F1[i] <= 0.49) {
											if (F7[i] <= 1.0) {
												Class[3]++;
											} else {
												Class[4]++;
											}
										} else {
											if (F7[i] <= 1.0) {
												if (F4[i] <= 0.085) {
													Class[3]++;
												} else {
													if (F7[i] <= 0.996) {
														Class[3]++;
													} else {
														Class[2]++;
													}
												}
											} else {
												Class[3]++;
											}
										}
									}
								} else {
									if (F8[i] <= 2.965) {
										if (F3[i] <= 1.95) {
											Class[3]++;
										} else {
											if (F0[i] <= 8.9) {
												Class[2]++;
											} else {
												Class[3]++;
											}
										}
									} else {
										if (F10[i] <= 9.75) {
											if (F10[i] <= 9.15) {
												Class[3]++;
											} else {
												if (F9[i] <= 0.585) {
													if (F7[i] <= 0.997) {
														Class[3]++;
													} else {
														Class[2]++;
													}
												} else {
													Class[2]++;
												}
											}
										} else {
											if (F9[i] <= 0.72) {
												if (F1[i] <= 0.545) {
													if (F4[i] <= 0.075) {
														Class[3]++;
													} else {
														if (F5[i] <= 31.5) {
															if (F9[i] <= 0.685) {
																Class[2]++;
															} else {
																if (F1[i] <= 0.415) {
																	Class[4]++;
																} else {
																	Class[2]++;
																}
															}
														} else {
															if (F2[i] <= 0.265) {
																Class[3]++;
															} else {
																Class[2]++;
															}
														}
													}
												} else {
													if (F9[i] <= 0.645) {
														if (F1[i] <= 0.827) {
															Class[3]++;
														} else {
															Class[2]++;
														}
													} else {
														Class[2]++;
													}
												}
											} else {
												if (F7[i] <= 1.0) {
													if (F8[i] <= 3.095) {
														if (F1[i] <= 0.49) {
															Class[4]++;
														} else {
															Class[2]++;
														}
													} else {
														Class[3]++;
													}
												} else {
													Class[2]++;
												}
											}
										}
									}
								}
							} else {
								Class[3]++;
							}
						}
					} else {
						if (F9[i] <= 0.615) {
							if (F5[i] <= 8.0) {
								if (F8[i] <= 3.18) {
									Class[4]++;
								} else {
									Class[3]++;
								}
							} else {
								Class[3]++;
							}
						} else {
							if (F2[i] <= 0.565) {
								if (F0[i] <= 9.5) {
									Class[5]++;
								} else {
									if (F7[i] <= 0.996) {
										Class[4]++;
									} else {
										Class[3]++;
									}
								}
							} else {
								if (F1[i] <= 0.583) {
									if (F6[i] <= 76.5) {
										Class[4]++;
									} else {
										Class[2]++;
									}
								} else {
									Class[3]++;
								}
							}
						}
					}
				} else {
					if (F10[i] <= 10.55) {
						if (F10[i] <= 10.45) {
							if (F5[i] <= 26.5) {
								if (F8[i] <= 3.385) {
									if (F0[i] <= 6.75) {
										if (F2[i] <= 0.32) {
											Class[2]++;
										} else {
											Class[3]++;
										}
									} else {
										if (F1[i] <= 0.945) {
											if (F2[i] <= 0.475) {
												if (F4[i] <= 0.072) {
													Class[2]++;
												} else {
													if (F10[i] <= 9.75) {
														if (F6[i] <= 95.0) {
															if (F4[i] <= 0.087) {
																if (F2[i] <= 0.195) {
																	if (F5[i] <= 7.5) {
																		Class[3]++;
																	} else {
																		if (F3[i] <= 2.05) {
																			if (F1[i] <= 0.51) {
																				Class[2]++;
																			} else {
																				Class[4]++;
																			}
																		} else {
																			Class[3]++;
																		}
																	}
																} else {
																	if (F7[i] <= 0.999) {
																		Class[2]++;
																	} else {
																		Class[3]++;
																	}
																}
															} else {
																if (F6[i] <= 26.5) {
																	if (F4[i] <= 0.109) {
																		if (F9[i] <= 0.685) {
																			if (F6[i] <= 17.0) {
																				Class[3]++;
																			} else {
																				Class[2]++;
																			}
																		} else {
																			Class[2]++;
																		}
																	} else {
																		Class[3]++;
																	}
																} else {
																	Class[3]++;
																}
															}
														} else {
															Class[2]++;
														}
													} else {
														if (F4[i] <= 0.131) {
															if (F8[i] <= 3.295) {
																if (F6[i] <= 27.5) {
																	Class[2]++;
																} else {
																	if (F6[i] <= 62.5) {
																		Class[3]++;
																	} else {
																		if (F1[i] <= 0.645) {
																			Class[3]++;
																		} else {
																			Class[2]++;
																		}
																	}
																}
															} else {
																if (F1[i] <= 0.602) {
																	Class[3]++;
																} else {
																	if (F2[i] <= 0.3) {
																		Class[3]++;
																	} else {
																		Class[1]++;
																	}
																}
															}
														} else {
															Class[4]++;
														}
													}
												}
											} else {
												Class[2]++;
											}
										} else {
											Class[1]++;
										}
									}
								} else {
									if (F7[i] <= 0.996) {
										if (F2[i] <= 0.195) {
											if (F1[i] <= 0.41) {
												if (F1[i] <= 0.39) {
													Class[2]++;
												} else {
													Class[4]++;
												}
											} else {
												if (F3[i] <= 1.7) {
													Class[2]++;
												} else {
													Class[3]++;
												}
											}
										} else {
											Class[2]++;
										}
									} else {
										if (F4[i] <= 0.067) {
											if (F0[i] <= 6.8) {
												Class[2]++;
											} else {
												Class[3]++;
											}
										} else {
											if (F10[i] <= 9.35) {
												if (F9[i] <= 0.625) {
													if (F1[i] <= 0.635) {
														Class[3]++;
													} else {
														Class[2]++;
													}
												} else {
													Class[3]++;
												}
											} else {
												if (F1[i] <= 0.685) {
													if (F1[i] <= 0.675) {
														if (F0[i] <= 6.3) {
															Class[3]++;
														} else {
															if (F3[i] <= 2.15) {
																if (F7[i] <= 0.997) {
																	if (F3[i] <= 1.6) {
																		Class[2]++;
																	} else {
																		Class[3]++;
																	}
																} else {
																	Class[2]++;
																}
															} else {
																if (F10[i] <= 10.0) {
																	if (F8[i] <= 3.44) {
																		Class[3]++;
																	} else {
																		if (F1[i] <= 0.615) {
																			Class[2]++;
																		} else {
																			if (F1[i] <= 0.64) {
																				Class[3]++;
																			} else {
																				Class[2]++;
																			}
																		}
																	}
																} else {
																	Class[4]++;
																}
															}
														}
													} else {
														Class[3]++;
													}
												} else {
													Class[2]++;
												}
											}
										}
									}
								}
							} else {
								if (F8[i] <= 3.305) {
									if (F5[i] <= 30.5) {
										Class[3]++;
									} else {
										Class[4]++;
									}
								} else {
									if (F3[i] <= 1.75) {
										if (F6[i] <= 63.5) {
											Class[0]++;
										} else {
											Class[3]++;
										}
									} else {
										if (F1[i] <= 0.385) {
											Class[3]++;
										} else {
											if (F1[i] <= 0.688) {
												if (F9[i] <= 0.595) {
													if (F9[i] <= 0.585) {
														Class[2]++;
													} else {
														Class[3]++;
													}
												} else {
													Class[2]++;
												}
											} else {
												if (F4[i] <= 0.09) {
													Class[3]++;
												} else {
													Class[2]++;
												}
											}
										}
									}
								}
							}
						} else {
							if (F9[i] <= 0.875) {
								if (F2[i] <= 0.34) {
									if (F9[i] <= 0.75) {
										if (F7[i] <= 0.997) {
											Class[3]++;
										} else {
											Class[2]++;
										}
									} else {
										Class[4]++;
									}
								} else {
									if (F1[i] <= 0.51) {
										Class[2]++;
									} else {
										Class[3]++;
									}
								}
							} else {
								Class[4]++;
							}
						}
					} else {
						if (F6[i] <= 88.5) {
							if (F9[i] <= 0.575) {
								if (F5[i] <= 20.5) {
									if (F7[i] <= 0.995) {
										if (F2[i] <= 0.05) {
											Class[2]++;
										} else {
											if (F8[i] <= 3.53) {
												Class[2]++;
											} else {
												Class[3]++;
											}
										}
									} else {
										if (F2[i] <= 0.155) {
											Class[1]++;
										} else {
											if (F8[i] <= 3.325) {
												Class[1]++;
											} else {
												Class[2]++;
											}
										}
									}
								} else {
									if (F0[i] <= 6.65) {
										Class[4]++;
									} else {
										Class[3]++;
									}
								}
							} else {
								if (F9[i] <= 0.685) {
									if (F1[i] <= 1.062) {
										if (F2[i] <= 0.005) {
											if (F3[i] <= 2.175) {
												if (F3[i] <= 1.75) {
													Class[3]++;
												} else {
													if (F5[i] <= 6.5) {
														Class[2]++;
													} else {
														Class[3]++;
													}
												}
											} else {
												if (F8[i] <= 3.665) {
													if (F5[i] <= 11.0) {
														if (F4[i] <= 0.067) {
															Class[2]++;
														} else {
															Class[1]++;
														}
													} else {
														Class[3]++;
													}
												} else {
													Class[4]++;
												}
											}
										} else {
											if (F2[i] <= 0.295) {
												if (F10[i] <= 11.65) {
													if (F5[i] <= 6.5) {
														if (F10[i] <= 10.75) {
															Class[2]++;
														} else {
															Class[3]++;
														}
													} else {
														Class[3]++;
													}
												} else {
													if (F10[i] <= 12.25) {
														Class[4]++;
													} else {
														Class[3]++;
													}
												}
											} else {
												if (F3[i] <= 2.55) {
													Class[3]++;
												} else {
													if (F1[i] <= 0.475) {
														Class[3]++;
													} else {
														if (F9[i] <= 0.645) {
															Class[2]++;
														} else {
															Class[4]++;
														}
													}
												}
											}
										}
									} else {
										Class[1]++;
									}
								} else {
									if (F9[i] <= 0.735) {
										if (F5[i] <= 8.0) {
											if (F10[i] <= 11.35) {
												Class[3]++;
											} else {
												Class[5]++;
											}
										} else {
											if (F1[i] <= 0.47) {
												if (F10[i] <= 12.35) {
													Class[3]++;
												} else {
													Class[4]++;
												}
											} else {
												if (F4[i] <= 0.069) {
													Class[3]++;
												} else {
													if (F4[i] <= 0.083) {
														Class[4]++;
													} else {
														if (F10[i] <= 11.4) {
															Class[2]++;
														} else {
															Class[4]++;
														}
													}
												}
											}
										}
									} else {
										if (F4[i] <= 0.06) {
											if (F2[i] <= 0.37) {
												if (F9[i] <= 0.83) {
													Class[5]++;
												} else {
													Class[4]++;
												}
											} else {
												Class[4]++;
											}
										} else {
											if (F3[i] <= 3.5) {
												if (F10[i] <= 12.45) {
													Class[3]++;
												} else {
													if (F6[i] <= 23.0) {
														Class[3]++;
													} else {
														if (F8[i] <= 3.365) {
															Class[4]++;
														} else {
															Class[5]++;
														}
													}
												}
											} else {
												Class[4]++;
											}
										}
									}
								}
							}
						} else {
							if (F8[i] <= 3.435) {
								Class[2]++;
							} else {
								if (F0[i] <= 5.5) {
									Class[4]++;
								} else {
									Class[2]++;
								}
							}
						}
					}
				}
			}
		}
	}
