module add_32 (a, b, i_carry, o_sum, o_carry, overflow);


  input[31:0]  a, b;
  input  i_carry;

  output[31:0] o_sum;
  output o_carry;
  output overflow;

wire tmp_carry1, tmp_carry2, tmp_carry3, tmp_carry4, tmp_carry5, tmp_carry6, tmp_carry7, tmp_carry8, tmp_carry9, tmp_carry10, tmp_carry11, tmp_carry12, tmp_carry13, tmp_carry14, tmp_carry15, tmp_carry16;
wire tmp_carry17, tmp_carry18, tmp_carry19, tmp_carry20, tmp_carry21, tmp_carry22, tmp_carry23, tmp_carry24, tmp_carry25, tmp_carry26, tmp_carry27, tmp_carry28, tmp_carry29, tmp_carry30, tmp_carry31;

full_adder  fba0(a[0], b[0], i_carry, o_sum[0], tmp_carry1),
            fba1(a[1], b[1], tmp_carry1, o_sum[1], tmp_carry2),
            fba2(a[2], b[2], tmp_carry2, o_sum[2], tmp_carry3),
            fba3(a[3], b[3], tmp_carry3, o_sum[3], tmp_carry4),
            fba4(a[4], b[4], tmp_carry4, o_sum[4], tmp_carry5),
            fba5(a[5], b[5], tmp_carry5, o_sum[5], tmp_carry6),
            fba6(a[6], b[6], tmp_carry6, o_sum[6], tmp_carry7),
            fba7(a[7], b[7], tmp_carry7, o_sum[7], tmp_carry8),
            fba8(a[8], b[8], tmp_carry8, o_sum[8], tmp_carry9),
            fba9(a[9], b[9], tmp_carry9, o_sum[9], tmp_carry10),
            fba10(a[10], b[10], tmp_carry10, o_sum[10], tmp_carry11),
            fba11(a[11], b[11], tmp_carry11, o_sum[11], tmp_carry12),
            fba12(a[12], b[12], tmp_carry12, o_sum[12], tmp_carry13),
            fba13(a[13], b[13], tmp_carry13, o_sum[13], tmp_carry14),
            fba14(a[14], b[14], tmp_carry14, o_sum[14], tmp_carry15),
            fba15(a[15], b[15], tmp_carry15, o_sum[15], tmp_carry16),
            fba16(a[16], b[16], tmp_carry16, o_sum[16], tmp_carry17),
            fba17(a[17], b[17], tmp_carry17, o_sum[17], tmp_carry18),
            fba18(a[18], b[18], tmp_carry18, o_sum[18], tmp_carry19),
            fba19(a[19], b[19], tmp_carry19, o_sum[19], tmp_carry20),
            fba20(a[20], b[20], tmp_carry20, o_sum[20], tmp_carry21),
            fba21(a[21], b[21], tmp_carry21, o_sum[21], tmp_carry22),
            fba22(a[22], b[22], tmp_carry22, o_sum[22], tmp_carry23),
            fba23(a[23], b[23], tmp_carry23, o_sum[23], tmp_carry24),
            fba24(a[24], b[24], tmp_carry24, o_sum[24], tmp_carry25),
            fba25(a[25], b[25], tmp_carry25, o_sum[25], tmp_carry26),
            fba26(a[26], b[26], tmp_carry26, o_sum[26], tmp_carry27),
            fba27(a[27], b[27], tmp_carry27, o_sum[27], tmp_carry28),
            fba28(a[28], b[28], tmp_carry28, o_sum[28], tmp_carry29),
            fba29(a[29], b[29], tmp_carry29, o_sum[29], tmp_carry30),
            fba30(a[30], b[30], tmp_carry30, o_sum[30], tmp_carry31),
            fba31(a[31], b[31], tmp_carry31, o_sum[31], o_carry);


endmodule